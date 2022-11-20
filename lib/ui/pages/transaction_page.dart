import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.isNotEmpty) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  // print('index : ${index}');
                  return TransactionCard(state.transactions[index]);
                },
                itemCount: state.transactions.length,
              ),
            );
          } else {
            return const Center(
              child: Text("Belum memiliki transaksi"),
            );
          }
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
