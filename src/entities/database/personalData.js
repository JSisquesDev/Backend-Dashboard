module.exports = (Sequelize, sqlz) => {
  const PersonalData = sqlz.define('personalData', {
    id: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    name: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    job: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    email: {
      type: Sequelize.STRING,
      validate: {
        isEmail: true,
      },
      allowNull: false,
    },
    phone: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    created_at: {
      type: Sequelize.DATE,
      allowNull: false,
    },
    updated_at: {
      type: Sequelize.DATE,
      allowNull: false,
    },
    active: {
      type: Sequelize.boolean,
      allowNull: false,
    },
    language: {
      type: Sequelize.STRING,
      allowNull: false,
    },
  });

  return PersonalData;
};
