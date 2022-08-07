import connection from '../../config/connection.js';

const getUserOrdersQuery = (id) => {
  const sql = {
    text: 'SELECT id,products,amount,addresses,status,order_number,createdAt,payment FROM orders WHERE user_id =$1 ORDER BY createdAt DESC',
    values: [id],
  };
  return connection.query(sql);
};
export default getUserOrdersQuery;
