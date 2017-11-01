import {
  RECEIVE_POSTS,
  RECEIVE_POST,
  REMOVE_POST,
} from '../actions/post_actions';

import merge from 'lodash/merge';

const PostsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_POSTS:
      return action.posts;
    case RECEIVE_POST:
      const newPost = { [action.post.id]: action.post };
      return merge({}, state, newPost);
    case REMOVE_POST:
      const newState = merge({}, state);
      delete newState[action.post.id];
      return newState;
    default:
      return state;
  }
};

export default PostsReducer;