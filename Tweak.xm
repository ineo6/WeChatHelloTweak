@interface MMUIViewController : UIViewController
- (void)helloWorld;
@end

%hook MMUIViewController

- (void)viewDidAppear:(_Bool)arg1 {
    %orig;
    [self helloWorld];
}

%new
- (void)helloWorld {
    UIAlertController *alertController = ({
        UIAlertController *al = [UIAlertController alertControllerWithTitle:@"hello World" message:nil preferredStyle:UIAlertControllerStyleAlert];
        [al addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil]];
        [al addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];

        al;
    });

    [self presentViewController:alertController animated:YES completion:nil];
}
%end
