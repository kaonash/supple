// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

import mdl from "material-design-lite"
import React from "react"
import ReactDOM from "react-dom"


class HelloWorld extends React.Component {
  render() {
    return (<h1>Hello World!</h1>)
  }
}
class HelloWorld2 extends React.Component {
  render() {
    return (<h1>Hello World2!</h1>)
  }
}

var xhr = new XMLHttpRequest();
xhr.open("GET", "supple/v1/suppliers", false);
      
xhr.send();
console.log(xhr.response);
class Suppliers extends React.Component {
  onClick(id) {
   console.log(id)
  },
  render() {
  	var arr = JSON.parse(xhr.response)

    var rows = [];
	for ( const key in arr ) {
		var info = arr[key];
    	rows.push(<tr key={key}>
				      <td className="mdl-data-table__cell--non-numeric">{info.table_name}</td>
				      <td className="mdl-data-table__cell--non-numeric">{info.supplier_name}</td>
				      <td className="mdl-data-table__cell--non-numeric">{info.supplier_id}</td>
				      <td className="mdl-data-table__cell--non-numeric">{info.original_name}</td>
				      <td className="mdl-data-table__cell--non-numeric">{info.column_name}</td>
				      <td className="mdl-data-table__cell--non-numeric"><button className="mdl-button mdl-js-button mdl-js-ripple-effect" onClick={this.onClick(info.supplier_id)}>DELETE!</button></td>
				    </tr>);
	}

    return <table className="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
  <thead>
    <tr>
      <th className="mdl-data-table__cell--non-numeric">table_name</th>
      <th className="mdl-data-table__cell--non-numeric">supplier_name</th>
      <th className="mdl-data-table__cell--non-numeric">supplier_id</th>
      <th className="mdl-data-table__cell--non-numeric">original_name</th>
      <th className="mdl-data-table__cell--non-numeric">column_name</th>
      <th className="mdl-data-table__cell--non-numeric">action</th>
    </tr>
  </thead>
  <tbody>{rows}</tbody>
  </table>
  }
}

ReactDOM.render(
  <Suppliers/>,
  document.getElementById("hello-world2")
);

ReactDOM.render(
  <HelloWorld/>,
  document.getElementById("hello-world")
);

