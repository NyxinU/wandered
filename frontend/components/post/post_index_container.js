import { connect } from 'react-redux';

import PostIndex from './post_index';
import { requestAllPosts } from '../../actions/post_actions';
import { selectAllPosts } from '../../reducers/selectors';

const mapStateToProps = state => ({
  posts: selectAllPosts(state),
});

const mapDispatchToProps = dispatch => ({
  requestAllPosts: () => dispatch(requestAllPosts())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PostIndex);