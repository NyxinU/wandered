import React, { Component } from 'react';

import PicIndexItem from './pic_index_item'

class PicIndex extends Component {
  componentWillMount() {
    this.props.requestAllPics();
  }

  render() {
    const { pics } = this.props;
    return (
      <ul>
        {pics.map(pic => <PicIndexItem
            key={pic.id}
            url={pic.url}          
          />)}
      </ul>
    )
  }

}

export default PicIndex;