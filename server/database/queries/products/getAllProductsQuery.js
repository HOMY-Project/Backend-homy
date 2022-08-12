import connection from '../../config/connection.js';

const getAllProductsQuery = (minPrice, maxPrice, page) => {
  const sql = {
    text: 'SELECT * FROM products WHERE price >= $1 AND price <=$2 LIMIT 4 OFFSET 4*($3-1) ',
    values: [minPrice, maxPrice, page],
  };
  return connection.query(sql);
};
export default getAllProductsQuery;
