//JS
require('FirstWeekViewController')
defineClass("HomeViewController",
            {
                //instance method definitions
                tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
                var row = indexPath.row()
                var content = self.paramArray()[row];
                var ctrl = FirstWeekViewController.alloc().init();
                if (content) {  //加上判断越界的逻辑
                    ctrl.setTitle(content)
                } else {
                    ctrl.setTitle('JSPatch test')
                }
                self.navigationController().pushViewController(ctrl);
            }
            }, {})
