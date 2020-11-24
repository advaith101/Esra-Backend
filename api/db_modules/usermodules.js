var userMethods = {
    validateLogin: async function (postData) {
        var sql = `select  UserID, Name, IsAdmin, CompanyID from users where email = "${postData.email}" and Password = "${postData.password}"`
                  + ` and CompanyID =  ${postData.companyID} Limit 1;`
        const [rows] = await dbConnection.execute(sql);
    return rows;
  },
  insertUser: async function (postData) {
    var sql = "INSERT INTO users (CompanyID,Name, Email, LocationID, DepartmentID,Password,IsAdmin, CreatedBy) VALUES ?";
    var values = [
      [postData.companyID, postData.name, postData.email, postData.locationID,postData.departmentID, postData.password, postData.isAdmin, postData.createdBy]
    ];
    const result = await dbConnection.query(sql, [values]);
    return result;
  },
  insertJWTToken: async function (postData) {
      var sql = `update jwttokens set Token ='${postData.token}', RefreshToken = '${postData.refreshToken}', ModifiedAt = current_timestamp  where UserID = '${postData.userID}' and IsActive = 1;`


      const [rows] = await dbConnection.execute(sql);
    return rows;
  },
  getTokenDetails: async function (refreshToken) {
    var sql = `Select token,tokenData,userID from jwttokens where RefreshToken='${refreshToken}' and IsActive=1 `;
       
    const result = await dbConnection.query(sql);
    return result[0][0];
  },
  changePassword: async function (postData) {
    var sql = `Update users set password='${postData.newPassword}' where email='${postData.email}' and CompanyID=${postData.companyID} and IsActive=1 `;
       
    const result = await dbConnection.query(sql);
    return result;
  },
  getUser:async function (postData){
    var sql = `select UserID, Email, Name, Password from users`; //where email='${postData.email}' and CompanyID=${postData.companyID} and IsActive=1 `;
    const result = await dbConnection.query(sql);
    return result;
  },

    // activitychart: async function (postData) {
    //     var sql = `SELECT activityid, activity, StartDatetime, EndDatetime, (keypresses + mouseclicks) as total, userID 
    //             FROM employeeactivity where EndDateTime <='${postData.enddate}' and StartDateTime >= '${postData.startdate}'`;
    //     if (postData.users.length > 0) {
    //         sql += `and (UserID = ${postData.users[0]}`
    //         if (postData.users.length > 1) {
    //             for (var i = 1; i < postData.users.length; i++) {
    //                 sql += `or UserID=${postData.users[i]}`
    //             }
    //         }
    //         sql += ')';
    //     }
    //     sql += ` group by userID, activity order by EndDateTime;`
    //     const result = await dbConnection.query(sql);
    //     return result;
    // },
    activitychart: async function (postData) {
        post_string = '('
        for (var i = 0; i < postData.Users.length; i++) {
            post_string = post_string.concat(postData.Users[i].toString())
            if (i != postData.Users.length - 1) {
                post_string = post_string.concat(',')
            }
        }
        post_string = post_string.concat(')')
        console.log(post_string)
        
        var sql = `SELECT * FROM documents WHERE UserID IN ${post_string} AND endtime BETWEEN '${postData.startdate}' AND '${postData.enddate}' `
        sql += ` group by ID, userID order by endtime;`
        const result = await dbConnection.query(sql);
        return result;
    },

    activityperuser: async function (postData) {
        var sql = `SELECT activityid, activity, StartDatetime, EndDatetime, keypresses, mouseclicks, userID
                FROM employeeactivity where EndDateTime <='${postData.enddate}' and StartDateTime >= '${postData.startdate}'
                and (UserID = ${postData.userID}) group by userID order by EndDateTime;`
        const result = await dbConnection.query(sql);
        return result;
    },
    analyticsuser: async function (postData) {
        var sql = `SELECT * employeeactivity where EndDateTime <=${postData.enddate} and StartDateTime >= ${postData.startdate}`;
        var users = postData.users;
        if (users != null || users.length > 0) {
            var userIDs = ` and userID in (` + users[0];
            for (var i = 1; i < users.length; i++) {
                userIDs += `, ` + users[i];
            }
            userIDs += `);`;
            sql = sql + userIDs;
        }
        const result = await dbConnection.query(sql);
        return result;
    },

    // spiderchart: async function (postData) {
    //     var sql = `SELECT *  
    //             FROM documents where EndDateTime <=${postData.enddate} and StartDateTime >= ${postData.startdate}`;
    //     if (postData.users.length > 0) {
    //         sql += `and (UserID = ${postData.users[0]}`
    //         if (postData.users.length > 1) {
    //             for (var i = 1; i < postData.users.length; i++) {
    //                 sql += `or UserID=${postData.users[i]}`
    //             }
    //         }
    //     }
    //     sql += `) order by EndDateTime;`
    //     const result = await dbConnection.query(sql);
    //     return result;
    // }
    spiderchart: async function (postData) {
        post_string = '('
        for (var i = 0; i < postData.Users.length; i++) {
            post_string = post_string.concat(postData.Users[i].toString())
            if (i != postData.Users.length - 1) {
                post_string = post_string.concat(',')
            }
        }
        post_string = post_string.concat(')')
        console.log(post_string)
        var sql = `SELECT ID, appname, mouseclicks, keypresses, active, idle, size,applications.app_name FROM documents LEFT JOIN applications ON 
        documents.applicationid = applications.applicationid WHERE UserID 
        IN ${post_string} AND endtime BETWEEN '${postData.startdate}' AND '${postData.enddate}' 
        AND applications.applicationid =  UNION SELECT ID, appname, mouseclicks, keypresses, active, idle, size,'Unrelated' 
        FROM unrelated WHERE UserID IN (1,2,3) AND endtime BETWEEN '${postData.startdate}' AND '${postData.enddate}'`
        sql +=  `group by ID, userID order by endtime;`
        const result = await dbConnection.query(sql);
        return result;
    }
};

module.exports = userMethods;