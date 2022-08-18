import connection from '../../config/connection.js';

const getEmployeesQuery = () => {
  const sql = {
    text: 'SELECT * FROM users WHERE role_id !=1',
    values: [],
  };
  return connection.query(sql);
};
export default getEmployeesQuery;