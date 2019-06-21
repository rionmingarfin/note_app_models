'use strict'

exports.home = (values,res) => {
    const data = {
        status : 202,
        values : values,
    }
    res.json(data);
    res.end();
}