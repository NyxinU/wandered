import {
  RECEIVE_PICS,
  RECEIVE_PIC,
  REMOVE_PIC,
} from '../actions/picture_actions';

import merge from 'lodash/merge';

const PicsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_PICS:
      return action.pics;
    case RECEIVE_PIC:
      newPic = { [action.pic.id]: action.pic};
      return merge({}, state, newPost);
    case REMOVE_PIC:
      const newState = merge({}, state);
      delete newState[action.pic.id];
      return newState;
    default: 
      return state;
  }
};

export default PicsReducer