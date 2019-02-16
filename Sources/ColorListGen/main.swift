//
//  main.swift
//  ColorListGenerator
//
//  Created by Takehito Koshimizu on 2019/02/10.
//

#if canImport(ColorSetKit)
import ColorSetKit

if #available(macOS 10.12, *) {
    ColorSets.currentDir().save()
}

#endif
