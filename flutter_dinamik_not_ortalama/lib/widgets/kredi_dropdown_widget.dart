import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not_ortalama/data/data_helper.dart';

import '../constants/constants.dart';

class KrediDropDownWidget extends StatefulWidget {
  final Function onKrediSecildi;
  const KrediDropDownWidget({@required this.onKrediSecildi, Key key})
      : super(key: key);

  @override
  _KrediDropDownWidgetState createState() => _KrediDropDownWidgetState();
}

class _KrediDropDownWidgetState extends State<KrediDropDownWidget> {
  @override
  Widget build(BuildContext context) {
    double secilenKrediDegeri = 1;
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: Sabitler.borderRadius,
        ),
        child: DropdownButton(
          iconEnabledColor: Sabitler.anaRenk.shade200,
          elevation: 16,
          underline: Container(),
          value: secilenKrediDegeri,
          items: DataHelper.tumDerslerinKredileri(),
          onChanged: (deger) {
            setState(() {
              secilenKrediDegeri = deger;
              widget.onKrediSecildi(deger);
            });
          },
        ));
  }
}
