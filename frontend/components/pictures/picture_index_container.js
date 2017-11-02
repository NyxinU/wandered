import { connect } from 'react-redux';

import PicIndex from './pic_index'
import { requestAllPics } from '../../actions/picture_actions';
import { selectAllPics } from '../../reducers/selectors';

const mapStateToProps = state => ({
  pics: selectAllPics(state),
});

const mapDispatchToProps  = dispatch => ({
  requestAllPics: () => dispatch(requestAllPics())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PicIndex);