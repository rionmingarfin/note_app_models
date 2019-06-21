'use strict'
const notes = require('../models').notes;
const categories = require('../models').categories;
const response = require('../response/response')
exports.home = (req, res) => {
    response.home('welcome', res)
}

exports.getAll =  (req, res) => {
    notes.findAll().then(result => {
        res.json(result);
    }).catch(err => {
        res.json(err)
    }) 
}
exports.getNotesid =  (req, res) => {
    notes.findOne({
        where : {id : req.params.id},
        include : [{model: categories}]
        // offset: 10,
        // limit: 2
      }).then(result => {
        res.json(result);
      }).catch(err => {
          res.json(err)
      })
}

exports.insert =  (req, res) => {
    notes.create({
        tittle : req.body.tittle,
        note : req.body.note,
        categoryId :req.body.categoryId, 
    }).then(result => {
        res.json(result)
    }).catch(err => {
        res.json(err)
    })
}

exports.update =  (req, res) => {
    notes.update({
        tittle : req.body.tittle,
        note :req.body.note,
        categoryId : req.body.categoryId
    },{
        where : {
            id :req.params.id
        }
    }).then(result => {
        res.json(result)
    }).catch(err => {
        res.json(err)
    })
}
exports.delete =  (req, res) => {
  notes.destroy({
      where : {
          id :req.params.id
      }
  }).then(result => {
     res.json({result})
  }).catch(err => {
      res.json(err)
  })  
}