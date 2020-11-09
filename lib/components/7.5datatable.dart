import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo({Key key}) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  var _sortColumnIndex = 0;
  var _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    /** 
     * 经测试有onSort时才会出现排序图标
     */
    // return _buildTableData1();
    List<DataRow> dateRows = [];
    for (int i = 0; i < data.length; i++) {
      dateRows.add(DataRow(
        selected: data[i].selected,
        onSelectChanged: (selected) {
          setState(() {
            data[i].selected = selected;
          });
        },
        cells: [
          DataCell(Text('${data[i].name}'),
              showEditIcon: true, placeholder: true, onTap: () {
            print('${data[i].name}');
          }),
          DataCell(Text('${data[i].age}')),
        ],
      ));
    }
    return DataTable(
        sortColumnIndex: _sortColumnIndex,
        sortAscending: _sortAscending,
        columns: [
          DataColumn(
              label: Text('姓名'),
              onSort: (int columnIndex, bool ascending) {
                setState(() {
                  _sortColumnIndex = columnIndex;
                  _sortAscending = ascending;
                  if (ascending) {
                    data.sort((a, b) => a.name.compareTo(b.name));
                  } else {
                    data.sort((a, b) => b.name.compareTo(a.name));
                  }
                });
              }),
          DataColumn(
              label: Text('年龄'),
              onSort: (int columnIndex, bool ascending) {
                setState(() {
                  _sortAscending = ascending;
                  if (ascending) {
                    data.sort((a, b) => a.age.compareTo(b.age));
                  } else {
                    data.sort((a, b) => b.age.compareTo(a.age));
                  }
                });
              }),
        ],
        rows: dateRows);
    // return _buildTableData2();
  }
}

class DataTableDemo2 extends StatefulWidget {
  DataTableDemo2({Key key}) : super(key: key);

  @override
  _DataTableDemo2State createState() => _DataTableDemo2State();
}

class _DataTableDemo2State extends State<DataTableDemo2> {
  @override
  Widget build(BuildContext context) {
    List<DataRow> dateRows = [];
    for (int i = 0; i < data.length; i++) {
      dateRows.add(DataRow(
        cells: [
          DataCell(Text('${data[i].name}')),
          DataCell(Text('${data[i].age}')),
          DataCell(Text('男')),
          DataCell(Text('2020')),
          DataCell(Text('10')),
        ],
      ));
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(columns: [
        DataColumn(label: Text('姓名')),
        DataColumn(
          label: Text('年龄'),
        ),
        DataColumn(
          label: Text('性别'),
        ),
        DataColumn(
          label: Text('出生年份'),
        ),
        DataColumn(
          label: Text('出生月份'),
        ),
      ], rows: dateRows),
    );
  }
}

_buildTableData1() {
  return Container(
    child: DataTable(sortColumnIndex: 1, sortAscending: true, columns: [
      DataColumn(label: Text('姓名'), tooltip: '长按提示'),
      DataColumn(
          label: Text('年龄'),
          numeric: true,
          onSort: (int columnIndex, bool ascending) {
            //排序算法
            print(columnIndex);
          }),
    ], rows: [
      DataRow(
          // selected: true,
          cells: [
            DataCell(Text('老张')),
            DataCell(Text('18')),
          ],
          onSelectChanged: (selected) {
            print(selected);
          }),
      DataRow(cells: [
        DataCell(Text('老张2')),
        DataCell(Text('28')),
      ])
    ]),
  );
}

// _buildTableData2
class User {
  User(this.name, this.age, {this.selected = false});

  String name;
  int age;
  bool selected;
}

List<User> data = [
  User('老张', 18),
  User('老张1', 19, selected: true),
  User('老张2', 20),
  User('老张3', 21),
  User('老张4', 22),
];

// _buildTableData2 () {
//   return Container(
//     child: ,
//   );
// }
