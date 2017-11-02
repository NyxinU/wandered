import React, { Component } from 'react';

class PicIndexItem extends Component {
  constructor(props) {
    super(props);
  }

  render(){
    const { url } = this.props 
    console.log('====================================');
    console.log(this.props);
    console.log('====================================');
    return (
      <img src='https://www.picmonkey.com/_/static/images/index/picmonkey_twitter_02.24fd38f81e59.jpg'/>
    );
  }

}

export default PicIndexItem;