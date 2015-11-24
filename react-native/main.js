/**
 * This is the entry point for your experience that you will run on Exponent.
 *
 * Start by looking at the render() method of the component called
 * FirstExperience. This is where the text and example components are.
 */
'use strict';

let React = require('react-native');
let {
  Animated,
  AppRegistry,
  NavigatorIOS,
  Easing,
  Image,
  ScrollView,
  StatusBarIOS,
  StyleSheet,
  Text,
  View,
} = React;

var SearchPage = require('./SearchPage');

class HelloWorld extends React.Component {
  render() {
    return (
        <Text style = { styles.text }>
          Hello World
        </Text>
   );
  }
 }

class RaptorsApp extends React.Component{
  render() {
    return(
      <React.NavigatorIOS
       style = { styles.container }
       initialRoute = {{
         title: 'Raptors App',
         component: SearchPage,
       }}/>
    );
  }
}

  var styles = StyleSheet.create({
    text: {
      color: 'black',
      backgroundColor: 'white',
      fontSize: 30,
      margin: 80
    },
    container: {
      flex: 1,
    }
  });




AppRegistry.registerComponent('main', () => RaptorsApp);
