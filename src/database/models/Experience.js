const { Sequelize } = require('sequelize');

module.exports = sequelize => {
  const Experience = sequelize.define(
    'Experience',
    {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      name: {
        type: Sequelize.STRING,
      },
      location: {
        type: Sequelize.STRING,
      },
      start_year: {
        type: Sequelize.INTEGER,
      },
      end_year: {
        type: Sequelize.INTEGER,
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
      modelName: 'Experience',
      tableName: 'EXPERIENCE',
      createdAt: 'created_at',
      updatedAt: 'updated_at',
      underscore: true,
    },
  );

  Experience.sync();

  return Experience;
};
