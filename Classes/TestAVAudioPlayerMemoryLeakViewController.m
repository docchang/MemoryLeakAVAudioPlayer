#import "TestAVAudioPlayerMemoryLeakViewController.h"

@implementation TestAVAudioPlayerMemoryLeakViewController
@synthesize playerWithURL;
@synthesize playerWithData;

- (IBAction) testPlayerInitWithContentsOfURL: (UIButton *) sender {
	NSError *error;	
	NSURL *playerURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Bell" ofType:@"m4a"]];	
	self.playerWithURL = [[AVAudioPlayer alloc] initWithContentsOfURL:playerURL error:&error];
	if (!playerWithURL) {
		NSLog(@"no %@.%@: %@",@"Introduction2", @"m4a", [error localizedDescription]);	
	}
	playerWithURL.volume = 0.9f;
	playerWithURL.numberOfLoops = 0;
	[playerWithURL play];
	NSLog(@"viewDidLoad:funPlayer with initWithContentsOfURL");
}

- (IBAction) testPlayerInitWithData: (UIButton *) sender {
	NSError *error;
	NSData *audioData = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"Chalk" ofType:@"m4a"]];	
	self.playerWithData = [[AVAudioPlayer alloc] initWithData:audioData error:&error];
	if (!playerWithData) {
		NSLog(@"no %@.%@: %@",@"Introduction2", @"m4a", [error localizedDescription]);	
	}
	playerWithData.volume = 0.9f;
	playerWithData.numberOfLoops = 0;
	[playerWithData play];
	NSLog(@"viewDidLoad:funPlayer with initWithData");
}

- (void)dealloc {	
	[playerWithURL release];
	[playerWithData release];
    [super dealloc];
}
@end
