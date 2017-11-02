import { connect } from 'react-redux';

import PicIndex from './pic_index'
import { requestAllPics } from '../../actions/picture_actions';
import { selectAllPics } from '../../reducers/selectors';

const mapStateToProps = (state, props) => ({
  pics: selectAllPics(state, props),
});

const mapDispatchToProps = dispatch => ({
  requestAllPics: (id) => dispatch(requestAllPics(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PicIndex);