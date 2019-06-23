'use strict'
const notes = require('../models').notes;
const categories = require('../models').categories;
const response = require('../response/response');
const isEmpty = require("lodash.isempty");
const Sequelize =require ('sequelize')
var Op =Sequelize.Op
exports.home = (req, res) => {
    response.home('welcome', res)
}

exports.getAll = async (req, res) => {
    var start, limit, sort,search;
    (isEmpty(req.query.page) || req.query.page == '') ? start = 1 : start = parseInt(req.query.page);
    (isEmpty(req.query.limit) || req.query.limit == '') ? limit = 10 : limit = parseInt(req.query.limit);
    (isEmpty(req.query.sort) || req.query.sort == '') ? sort = 'DESC' : sort = 'ASC';
    (isEmpty(req.query.search) || req.query.search == '') ? search = '' : search = req.query.search;
    
    // math pages
    var startPage = (start - 1) * limit;
    await notes.findAndCountAll({
        include: [{ model: categories }],
        order: [['time', `${sort}`]],
        where: {
            tittle: {
              [Op.like]: `%${search}%`
            }
         },
        offset: startPage,
        limit: limit,
    }).then(result => {
    //    count pages
        var totalCount = result.count;
        var totalPage = Math.ceil(totalCount / limit);
        res.json({
            totaldata: totalCount,
            totalPage: totalPage,
            limit:limit,
            page : start,
            data: result,
        });
    }).catch(err => {
        res.json(err)
    })
}
exports.getNotesid = (req, res) => {
    const id = req.params.id
    notes.findAll({
        include: [{ model: categories }],
        where: { id: id },
    }).then(result => {
        res.json(result);
    }).catch(err => {
        res.json(err)
    })
}

exports.insert = (req, res) => {
    notes.create({
        tittle: req.body.tittle,
        note: req.body.note,
        categoryId: req.body.categoryId,
    }).then(result => {
        res.json(result)
    }).catch(err => {
        res.json(err)
    })
}

exports.update = (req, res) => {
    notes.update({
        tittle: req.body.tittle,
        note: req.body.note,
        categoryId: req.body.categoryId
    }, {
            where: {
                id: req.params.id
            }
        }).then(result => {
            res.json(result)
        }).catch(err => {
            res.json(err)
        })
}
exports.delete = (req, res) => {
    notes.destroy({
        where: {
            id: req.params.id
        }
    }).then(result => {
        res.json({ result })
    }).catch(err => {
        res.json(err)
    })
}