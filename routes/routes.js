'use strict'

module.exports = (function(app){
    const controllerCategory = require('../controller/category');
    const controllerNotes =require('../controller/notes');
    //  routes category
    app.get('/',controllerCategory.home);
    app.get('/categories',controllerCategory.getCategory);
    app.get('/categories/:id',controllerCategory.getCategoryAll);
    app.post('/categories',controllerCategory.postCategory);
    app.put('/categories/:id',controllerCategory.updateCategory);
    app.delete('/categories/:id',controllerCategory.deleteCategory);

    // routes category

    app.get('/',controllerNotes.home);
    app.get('/notes',controllerNotes.getAll);
    app.get('/notes/:id',controllerNotes.getNotesid);
    app.post('/notes',controllerNotes.insert);
    app.put('/notes/:id',controllerNotes.update);
    app.delete('/notes/:id',controllerNotes.delete);
})