//
//  HFHexTextRepresenter.h
//  iHexEditor
//
//  Copyright 2007 mkous.com. All rights reserved.
//

#import <HexFiend/HFTextRepresenter.h>

/*! @class HFHexTextRepresenter

    @brief HFHexTextRepresenter is an HFRepresenter responsible for showing data in hexadecimal form.

    HFHexTextRepresenter is an HFRepresenter responsible for showing data in hexadecimal form.  It has no methods except those inherited from HFTextRepresenter.
*/
@interface HFHexTextRepresenter : HFTextRepresenter {
    unsigned long long omittedNybbleLocation;
    unsigned char unpartneredLastNybble;
}

@end
