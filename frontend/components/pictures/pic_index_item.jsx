import React, { Component } from 'react';

class PicIndexItem extends Component {
  constructor(props) {
    super(props);
  }

  render(){
    const { url } = this.props 

    return (
      <img src={url}/>
    );
  }

}

export default PicIndexItem;