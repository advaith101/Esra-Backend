var commonMethods = {

  getLocations: async function (postData) {
    var sql = `Select LocationID, Name from locations where CompanyID = ${postData.companyID} and IsActive=1 `;
    const result = await dbConnection.query(sql);

    return result[0];
  },
  getDepartments: async function (postData) {
    var sql = `Select DepartmentID, Name from departments where CompanyID = ${postData.companyID} and IsActive=1 `;
    const result = await dbConnection.query(sql);

    return result[0];
    },

    getAppID : async function (postData) {
        //TEMPORARY FIX!!!
        //var sql = `SELECT applicationid, app_name from applications where type = ${postData.apptype}`;
        var sql = `SELECT applicationid, app_name from applications`;
        const result = await dbConnection.query(sql);
        return result[0];
    },

    getTeamID : async function (postData) {
        var sql = `SELECT TeamID, Name from team where IsActive=1 and ManagerID=${postData.managerID}`;
        const result = await dbConnection.query(sql);

        return result[0];
    },

    fullteam : async function (postData) {
        var sql = `SELECT ID, EmployeeID, TeamID from teamemployees LEFT JOIN users On users.UserID=EmployeeID where TeamID=${postData.teamID}`;
        const result = await dbConnection.query(sql);
        return result[0];
    },

    addteam : async function (postData) {
      var sql = `INSERT INTO team 
                VALUES (1,'${postData.teamname}',${postData.managerID},1,${postData.managerID},NOW())`;
      const result = await dbConnection.query(sql);
      return result[0];
    },

    addusertoteam : async function (postData) {
      var sql = `INSERT INTO teamemployees 
                VALUES (1,'${postData.teamID}',${postData.userID},NOW())`;
      const result = await dbConnection.query(sql);
      return result[0];
    },

  getReasons: async function (postData) {
    var sql = `Select ReasonID, Name from reasons where CompanyID = ${postData.companyID} and IsActive=1 `;
    const result = await dbConnection.query(sql);
    return result[0];
  },
  getCompanies: async function () {
    var sql = `Select CompanyID, CompanyName from companies where IsActive=1 `;
    const result = await dbConnection.query(sql);

    return result[0];
  },
};

module.exports = commonMethods;