import * as APIUtil from '../util/post_api_util';

export const RECEIVE_POSTS = 'RECEIVE_POSTS';
export const RECEIVE_POST = 'RECEIVE_POST';
export const REMOVE_POST = 'REMOVE_POST;';
export const RECEIVE_POST_ERRORS = 'RECEIVE_POST_ERRORS';

export const requestAllPosts = () => dispatch => (
  APIUtil.fetchPosts().then(posts => (
    dispatch(receivePosts(posts))
  ),err => dispatch(receivePostErrors(err.responseJSON)))
);

export const requestPosts = id => dispatch => (
  APIUtil.fetchPost().then(post => (
    dispatch(receivePost(post))  
  ),err => dispatch(receivePostErrors(err.responseJSON)))
);

export const createPost = post => dispatch => (
  APIUtil.createPost(post).then(post => (
    dispatch(receivePost(post))
  ), err => dispatch(receivePostErrors(err.responseJSON)))
);

export const updatePost = post => dispatch => (
  APIUtil.updatePost(post).then(post => (
    dispatch(receivePost(post))
  ),err => dispatch(receivePostErrors(err.responseJSON)))
);

export const deletePost = id => dispatch => (
  APIUtil.destroyPost(id).then( post => (
    dispatch(removePost(post))
  ),err => dispatch(receivePostErrors(err.responseJSON)))
);

export const receivePosts = posts => ({
  type: RECEIVE_POSTS,
  posts
});

export const receivePost = post => ({
  type: RECEIVE_POST,
  post 
});

export const removePost = post => ({
  type: REMOVE_POST,
  post 
});

export const receivePostErrors = postErrors => ({
  type: RECEIVE_POST_ERRORS,
  postErrors
});

