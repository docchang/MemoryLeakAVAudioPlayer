#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface TestAVAudioPlayerMemoryLeakViewController : UIViewController {
	AVAudioPlayer *playerWithURL;
	AVAudioPlayer *playerWithData;
}

@property (nonatomic, retain) AVAudioPlayer *playerWithURL;
@property (nonatomic, retain) AVAudioPlayer *playerWithData;

- (IBAction) testPlayerInitWithContentsOfURL: (UIButton *) sender;
- (IBAction) testPlayerInitWithData: (UIButton *) sender;

@end
