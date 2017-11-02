import { combineReducers } from 'redux';

import posts from './posts_reducer';
import pictures from './pictures_reducer';

export default combineReducers({
  posts,
  pictures,
});