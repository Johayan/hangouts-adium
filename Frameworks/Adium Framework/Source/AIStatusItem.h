/* 
 * Adium is the legal property of its developers, whose names are listed in the copyright file included
 * with this source distribution.
 * 
 * This program is free software; you can redistribute it and/or modify it under the terms of the GNU
 * General Public License as published by the Free Software Foundation; either version 2 of the License,
 * or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even
 * the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
 * Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along with this program; if not,
 * write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */

#import "/Users/john/Development/Hangouts/Frameworks/Adium Framework/Source/AIStatusIcons.h"
#import "/Users/john/Development/Hangouts/Frameworks/Adium Framework/Source/AIStatusDefines.h"

@class AIStatusGroup;

@interface AIStatusItem : NSObject <NSCoding> {
	NSMutableDictionary	*statusDict;
	AIStatusGroup		*containingStatusGroup;

	BOOL				encoding;
}

- (NSString *)title;
- (void)setTitle:(NSString *)inTitle;

- (NSImage *)menuIcon;
- (NSImage *)icon;
- (NSImage *)iconOfType:(AIStatusIconType)iconType direction:(AIIconDirection)direction;

- (AIStatusType)statusType;
- (void)setStatusType:(AIStatusType)statusType;

- (AIStatusMutabilityType)mutabilityType;

- (NSNumber *)uniqueStatusID;
- (int)preexistingUniqueStatusID;
- (void)setUniqueStatusID:(NSNumber *)inUniqueStatusID;

- (AIStatusGroup *)containingStatusGroup;
- (void)setContainingStatusGroup:(AIStatusGroup *)inStatusGroup;

#pragma mark Applescript
- (AIStatusTypeApplescript)statusTypeApplescript;
- (void)setStatusTypeApplescript:(AIStatusTypeApplescript)statusTypeApplescript;

@end
