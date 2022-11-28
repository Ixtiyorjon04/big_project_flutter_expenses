import 'package:flutter/material.dart';
import '../widgets/category_screen/category_fetcher.dart';
import '../widgets/expense_form.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const name = '/category_screen'; // for routes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: const CategoryFetcher(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) => const ExpenseForm(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// import 'package:big_project_flutter/constants/icons.dart';
// import 'package:big_project_flutter/widgets/expense_form.dart';
// import 'package:flutter/material.dart';
//
// import '../widgets/category_screen/category_fetcher.dart';
//
// class CategoryScreen extends StatelessWidget {
//   const CategoryScreen({Key? key}) : super(key: key);
//   static const name = '/category_screen';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Categories'),
//         centerTitle: true,
//       ),
//       body: CategoryFetcher(),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           showModalBottomSheet(
//             context: context,
//             isScrollControlled: true,
//             builder: (_) => const ExpenseForm(),
//           );
//         },
//         // child: Icon(icons.add),
//       ),
//     );
//   }
// }
