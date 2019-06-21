'use strict';
module.exports = (sequelize, DataTypes) => {
  const notes = sequelize.define('notes', {
    tittle: DataTypes.STRING,
    note: DataTypes.TEXT,
    time: DataTypes.DATE,
    categoryId: DataTypes.STRING
  }, {});
  notes.associate = function(models) {
    // associations can be defined here
    notes.belongsTo(models.categories,{foreignKey : 'categoryId'})
  };
  return notes;
};