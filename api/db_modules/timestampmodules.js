var timestampMethods = {
    setOnlineStatusOnline : async function (postData) {
      var sql = `UPDATE users
            SET Status =${postData.online}  WHERE UserID =${postData.UserID} `;
      const result = await dbConnection.query(sql);
      return result;
    },
    
    getOnlineStatus : async function (postData) {
        var sql = `SELECT users.Email, users.Name, users.UserID, users.Status, departments.Name as depname, locations.Name as locname
            from users,departments, locations
            where users.companyID=(${postData.companyID}) and users.IsActive=1 and users.LocationID=locations.locationID
            and users.DepartmentID=departments.DepartmentID;`;
      const result = await dbConnection.query(sql);
      return result[0];
    },

      addClockin : async function (postData) {
        var sql = "CALL InsertorUpdateClockIn(true, NOW(), null, "
        + postData.userId
        + ","
        + postData.companyID 
        + ") ";
        const result = await dbConnection.query(sql);
        return result;
    },

      addClockOut : async function (postData) {
        var sql = "CALL InsertorUpdateClockIn(false,"
        + "null, NOW(),"
        + postData.userId
        + ","
        + postData.companyID 
        + ") ";
        const result = await dbConnection.query(sql);
        return result;
    },

    getActivity : async function (postData) {
        var sql = `CALL getActivity(${postData.companyID}, ${postData.UserID})`
        const result = await dbConnection.query(sql);
        return result[0][0];

    },
      getMouseandKeyboard : async function (postData) {
        var sql = `select * from employeeactivity where userID=${postData.UserID}`
        const result = await dbConnection.query(sql);
        return result[0][0];

    }
};

module.exports = timestampMethods;