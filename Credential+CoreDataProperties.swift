//
//  Credential+CoreDataProperties.swift
//  One Password
//
//  Created by Buzzyears on 17/07/17.
//  Copyright © 2017 Confiance. All rights reserved.
//

import Foundation
import CoreData


extension Credential {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Credential> {
        return NSFetchRequest<Credential>(entityName: "Credential");
    }

    @NSManaged public var name: String?
    @NSManaged public var password: String?
    @NSManaged public var userId: String?
    @NSManaged public var imageName: String?

}
