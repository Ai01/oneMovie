import { MovieModel } from 'src/models';
import BaseDomain from '../base/baseDomain';

class MovieDomain extends BaseDomain {
  static model = MovieModel

  static async create(movieInfo, options) {
    return await super.create(movieInfo, options);
  }
}

export default MovieDomain;
