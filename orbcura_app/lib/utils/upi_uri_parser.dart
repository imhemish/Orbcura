class UPIDetails {
  final String payeeID;
  final num? amount;

  UPIDetails(this.payeeID, this.amount);

  factory UPIDetails.fromURI(String uri) {
    var parsed = Uri.parse(uri);
    if (parsed.scheme != "upi") {
      throw Exception("Not a UPI URI");
    }
    var params = parsed.queryParameters;
    var payee = params["pa"];
    payee ??= params["amp;pa"];
    if (payee == null) {
      throw Exception("Does not contain a UPI ID");
    }
    return UPIDetails(payee, null);
  }
}

void main() {
  print(UPIDetails.fromURI("upi://pay?mode=01&amp;ver=01&amp;pa=9996142844%40superyes&amp;pn=HEMISH++&amp;txntype=pay&amp;qrmedium=02").payeeID);
}