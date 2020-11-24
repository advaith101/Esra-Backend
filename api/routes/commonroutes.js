var express = require('express');
var router = express.Router();
const commonMethods = require('../db_modules/commonmodules');


router.post('/GetLocations', async function (req, res) {

  const result = await commonMethods.getLocations(req.body);
  const response = {
    "status": "ok",
    "data": result
  }
  res.status(200).json(response);

});

router.post('/appIDName', async function (req, res) {
    var result = await commonMethods.getAppID(req.body);
    const response = {
        "status": "ok",
        "data": result
    }
    res.status(200).json(response);
})

router.post('/teamIDName', async function (req, res) {
    var result = await commonMethods.getTeamID(req.body);
    const response = {
        "status": "ok",
        "data": result
    }
    res.status(200).json(response);
})

router.post('/fullteam', async function (req, res) {
    var result = await commonMethods.fullteam(req.body);
    const response = {
        "status": "ok",
        "data": result
    }
    res.status(200).json(response);
});

router.post('/addteam', async function (req, res) {
  var result = await commonMethods.addteam(req.body);
  const response = {
      "status": "ok",
      "data": result
  }
  res.status(200).json(response);
});

router.post('/addUserToTeam', async function (req, res) {
  var result = await commonMethods.addusertoteam(req.body);
  const response = {
      "status": "ok",
      "data": result
  }
  res.status(200).json(response);
});

router.post('/GetDepartments', async function (req, res) {
  const result = await commonMethods.getDepartments(req.body);
  const response = {
    "status": "ok",
    "data": result
  }
  res.status(200).json(response);

});
router.post('/GetReasons', async function (req, res) {
  const result = await commonMethods.getReasons(req.body);
  const response = {
    "status": "ok",
    "data": result
  }
  res.status(200).json(response);

});
router.post('/GetCompanies', async function (req, res) {
  const result = await commonMethods.getCompanies();
  const response = {
    "status": "ok",
    "data": result
  }
  res.status(200).json(response);

});



module.exports = router;
