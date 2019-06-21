'use strict'

const model = require('../models/index');
const response = require('../response/response');


exports.home = (req, res) => {
    response.home('welcome', res);
}

exports.getCategory = async (req, res) => {
    try {
        const getCategory = await model.categories.findAll({ })
        if (getCategory.length != 0) {
            res.json({
                status: 202,
                message: 'success',
                data: getCategory
            })
        } else {
            res.json({
                status: 404,
                message: 'not found',
                data: {}
            })
        }
    } catch (error) {
        res.json({
            status: 405,
            message: error.message,
            data: {}
        })
    }
}
exports.getCategoryAll = async (req, res) => {
    const id = req.params.id;
    try {
        const getCategory = await model.categories.findAll({ where: { id: id } })
        if (getCategory.length != 0) {
            res.json({
                status: 202,
                message: 'success',
                data: getCategory
            })
        } else {
            res.json({
                status: 404,
                message: 'data not found',
            })
        }
    } catch (error) {
        res.json({
            status: 405,
            message: error.message,
            data: {}
        })
    }
}

exports.postCategory = async (req, res) => {
    const name = req.body.name;

    try {
        const postCategory = await model.categories.create({ name });
        if (postCategory) {
            res.json({
                status: 202,
                message: 'succesfull',
                data: postCategory,
            })
        } else {
            res.json({
                status: 404,
                message: 'failed',
                data: {}
            })
        }
    } catch (error) {
        res.json({
            status: 405,
            message: 'not found',
            data: {}
        })
    }
}

exports.updateCategory = async (req, res) => {
    const id = req.params.id;
    const name = req.body.name;
    try {
        const updateCategory = await model.categories.update({
            id, name
        },
            {
                where: {
                    id: id
                }
            })
        if (updateCategory) {
            res.json({
                status: 202,
                message: 'succes',
                data: updateCategory
            })
        } else {
            res.json({
                status: 202,
                message: 'not found',
                data: {}
            })
        }
    } catch (error) {
        res.json({
            status: 405,
            message: 'not found',
            data: {}
        })
    }
}


exports.deleteCategory = async (req, res) => {
    const id = req.params.id;
    const deleteCategory = await model.categories.destroy({
        where: { id: id }
    })
    try {
        if (deleteCategory) {
            res.json({
                status: 202,
                message: 'succesffuly',
                data: deleteCategory
            })
        } else {
            res.json({
                status: 202,
                message: 'failed',
                data: {}
            })
        }
    } catch (error) {
        res.json({
            status: 202,
            message: 'failed',
            data: {}
        })
    }
}