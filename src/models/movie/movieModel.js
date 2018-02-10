import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { BIGINT, STRING, DATE } = DataTypes;

const Movie = sequelize.define(
  'Movie', {
    id: {
      type: BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },

    name: {
      type: STRING,
      allowNull: false,
    },

    resourceLink: {
      type: STRING,
      allowNull: false,
    },

    releaseDate: {
      type: DATE,
      allowNull: true,
    },

    director: {
      type: STRING,
      allowNull: true,
    },

    desc: {
      type: STRING,
      allowNull: true,
    },

    posterUrl: {
      type: STRING,
      allowNull: true,
    },

  },
  {
    indexes: [
      {
        unique: true,
        fields: ['name'],
      },
    ],
  },
);

export default Movie;
