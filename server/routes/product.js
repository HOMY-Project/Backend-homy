import { Router } from 'express';
import {
  getProductByIdController,
  getSingleProductReviewController,
  getCollectReviewProductController,
  addReviewProductController,
  getRecommendedProductController,
  getProductsFilteredController,
  getAllProductsController,
  addProductController,
  updateProductController,
  deleteProductController,
  archivedProductController,
} from '../controllers/index.js';
import { verifyToken, verifyTokenAndAdminAuthorization } from '../middleware/index.js';

const router = Router();

router.get('/product/:productId', getProductByIdController);
router.route('/product/:productId/review').get(getSingleProductReviewController)
  .post(verifyToken, addReviewProductController);
router.get('/product/:productId/rate', getCollectReviewProductController);
router.post('/products', getProductsFilteredController);
router.get('/products/:categoriesId/recommended', getRecommendedProductController);

router.get('/dashboard/products', verifyTokenAndAdminAuthorization, getAllProductsController);
router.post('/dashboard/product', verifyTokenAndAdminAuthorization, addProductController);
router.route('/dashboard/product/:id')
  .put(verifyTokenAndAdminAuthorization, updateProductController)
  .delete(verifyTokenAndAdminAuthorization, deleteProductController);
router.put('/dashboard/product/:id/archive', verifyTokenAndAdminAuthorization, archivedProductController);

export default router;
