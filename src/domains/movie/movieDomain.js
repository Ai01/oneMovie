import { MovieModel } from 'src/models';
import BaseDomain from '../base/baseDomain';

class MovieDomain extends BaseDomain {
  static model = MovieModel
}

export default MovieDomain;
