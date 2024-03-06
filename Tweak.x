#import <UIKit/UIKit.h>
#import<SpringBoard/SpringBoard.h>

// hook 了 SpringBoard类的 applicationDidFinishLaunching 方法，
// 具体现象就是 进入ios系统桌面之前弹出提示框
%hook SBHomeScreenViewController

-(void)viewDidAppear:(BOOL)arg0  {
    %orig;
    UIAlertController *alertController = ({
        UIAlertController *_alertController = [UIAlertController alertControllerWithTitle:@"Hello Zq!" message:nil preferredStyle:UIAlertControllerStyleAlert];
        [_alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {}]];
        [_alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {}]];
        _alertController;
    });
    [self presentViewController:alertController animated:YES completion:NULL];
}

%end