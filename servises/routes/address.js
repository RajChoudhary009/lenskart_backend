const express = require('express')
const route = express.Router();

const addressapi = require('../controllers/addressController')
const {userAuth} = require('../middleware/authmiddleware')

route.post('/addaddress/',userAuth,addressapi.createAddress)
route.get('/getalladdressinfo/',userAuth,addressapi.getalladdressinfo)
route.patch('/editaddress/',userAuth,addressapi.editaddress)
route.delete('/removeaddress/:id',userAuth,addressapi.removeaddress)

module.exports = route;
