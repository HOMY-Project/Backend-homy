import connection from '../../config/connection.js';

const getSingleProductReviewByIdQuery = (productId, page) => {
  const sql = {
    text: `SELECT (SELECT COUNT(comment) FROM reviews WHERE product_id = $1),reviews.comment,reviews.rate,users.name, reviews.createdAt FROM reviews 
     JOIN users ON reviews.user_id = users.id  GROUP BY reviews.id,users.id HAVING product_id=$1 ORDER BY reviews.createdAt DESC LIMIT 3 OFFSET ($2-1)*3 `,
    values: [productId, page],
  };
  return connection.query(sql);
};
export default getSingleProductReviewByIdQuery;
