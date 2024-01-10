const { Sequelize } = require('sequelize');

module.exports = sequelize => {
  const Project = sequelize.define(
    'Project',
    {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      name: {
        type: Sequelize.STRING,
      },
      description: {
        type: Sequelize.STRING,
      },
      url: {
        type: Sequelize.STRING,
      },
      icon: {
        type: Sequelize.STRING,
      },
      created_at: {
        type: Sequelize.DATE,
      },
      updated_at: {
        type: Sequelize.DATE,
      },
      active: {
        type: Sequelize.BOOLEAN,
      },
      language: {
        type: Sequelize.STRING,
      },
      id_personal_data: {
        type: Sequelize.INTEGER,
      },
    },
    {
      // options
      sequelize,
      modelName: 'Project',
      tableName: 'PROJECT',
      createdAt: 'created_at',
      updatedAt: 'updated_at',
      underscore: true,
    },
  );

  Project.sync();

  return Project;
};
