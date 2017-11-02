import {
  RECEIVE_PICS,
  RECEIVE_PIC,
  REMOVE_PIC,
} from '../actions/picture_actions';

import merge from 'lodash/merge';

const PicsReducer = (state = {}, action) => {
  Object.freeze(state);
  const newState = merge({}, state)

  switch (action.type) {
    case RECEIVE_PICS:
      action.pics.forEach( function(pic) {
        newState[pic.id] = pic;
      });
      return newState
    case REMOVE_PIC:
      delete newState[action.pic.id];
      return newState;
    default: 
      return state;
  }
};

export default PicsReducer