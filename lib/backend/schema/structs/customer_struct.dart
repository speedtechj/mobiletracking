// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    String? invoice,
  }) : _invoice = invoice;

  // "invoice" field.
  String? _invoice;
  String get invoice => _invoice ?? '';
  set invoice(String? val) => _invoice = val;
  bool hasInvoice() => _invoice != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        invoice: data['invoice'] as String?,
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'invoice': _invoice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'invoice': serializeParam(
          _invoice,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        invoice: deserializeParam(
          data['invoice'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct && invoice == other.invoice;
  }

  @override
  int get hashCode => const ListEquality().hash([invoice]);
}

CustomerStruct createCustomerStruct({
  String? invoice,
}) =>
    CustomerStruct(
      invoice: invoice,
    );
