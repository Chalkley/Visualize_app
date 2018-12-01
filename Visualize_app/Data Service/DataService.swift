//
//  DataService.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 15/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import Foundation

class DataServ {
    
    static let instance = DataServ()
    
    private let selectionList = [
        Selection(selectionImage: "homeWallpaper", selectionTitle: "Cribs"),
        Selection(selectionImage: "carsWallpaper", selectionTitle: "Rides"),
        Selection(selectionImage: "jetSetterWallpaper", selectionTitle: "Jet Setter"),
        Selection(selectionImage: "RealTalkGradient", selectionTitle: "Real Talk"),
        Selection(selectionImage: "wowInterior", selectionTitle: "Wow Interiors"),
        Selection(selectionImage: "toysWallpaper", selectionTitle: "Toys"),
        
        ]
    
    func getSelectionList() -> [Selection] {
        return selectionList
    }
    
    private let mansionVideoLink = [
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ezmP17JLbLQ?start=3\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/tOjJ2BhKCnw?start=23\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/AorSpcbh_4k?start=7\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/UpSfzoxKfuM?start=6\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/7ibgYLTu9s0?start=6\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/5hl1BuOUSTU?start=6\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/0SNwmjNIbHc?start=6\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/9K1DkRY8Ugg?start=44\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/X2z-mT9lVAA?start=17\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/97l8XAOaa7c?start=17\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/SSJbtJfdZtw?start=20\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/MOokQOoIfCI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/R3p9X6FyIr8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ZSEONX7P2uA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/yjv-NN_rusc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/O4HmbEbCT2c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/QeOQnCBX2Dw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>")
        
    ]
    

    private let carVideoLink = [
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/B7P4nJzD-4s\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/X5ZHl3GERI0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/gFUEbr6O0qU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/su-0U8G6gbY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/Ib14PpDX8P8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/FEmG0gSUBhQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/vCSyflSV42Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/7-MCdfqL61E\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/7AZLu45nl5A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/gtFs5iGHLrA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/mhTQ22cHrYQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ewQaikxTUJs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/dyt1ETVtwDI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/pXHXlI9yU0w\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/iqxIu1cyRfk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/Jj_wsQrRIHw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>")
    ]
    
    
    private let jetSetterVideoLink = [
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/rPJ0q1j8n6U?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/AXAT3ZD3e5k?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/HMmQu4zn1KQ?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/vQWlNALvbhE?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/OV5n4X7PEXM?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/iAkPMDaW3sg?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/fXnwDijUKPI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/0pC5bLu7bmg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/pXU_GY7hjPc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/VBzVJk4t_Lw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/gqLCNddh73Y?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/tRWAhEJtczg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ZZlfTqE080g?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/K-8jO_6555c?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/gALNuSALzpY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/SkAQhcLK4TU?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/3RDYVVmVR2U?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/1_5n1EfcWyM?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/X8zLJlU_-60?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/0Z6hiJJfdlU?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/bYVebL_BYqo?start=7\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/S_dfq9rFWAE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>")
    ]
    
    private let realTalkVideoLink = [
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/kyZVWe_-Pqk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/T_aFqEmL5JI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/lsSC2vx7zFQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/xp2qjshr-r4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/nsd7ExP9Sgg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/m5OusPtjyQY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ft_DXwgUXB0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ptD0T-ZcF2M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/3AkjzDHuWKM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/QygpaIJclm4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/OKJImnk-gzQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/xoXYe9e01_Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/EctzLTFrktc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/uMJ5Zwfz1pU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ONh37dDMJYk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/-W-dIysKYZ0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/cfI_S9svhPo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/yvEzAx1Ij6M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>")
        
    ]
    
    
    private let wowInteriorsVideoLink = [
        VideoID(videoLink: "<iframe width=\"100%\" height=src=\" src=\"https://www.youtube.com/embed/lO3adxQUBtE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ytECV6rZeLc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/5lXGSdysyn0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/DiPxsSuUvPU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/cmUK3Fq4LWM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/04YLqj1Sb1Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/7GHCZybUjXQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/nkw5l93-YcA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/oWOm2CkgoYo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>")
    
    ]
    
    private let toysVideoLink = [
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/bbSy8CFkLEQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/XWkkhnA8I6o\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/NSQ4xGavFyc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/570a97SXiAQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/BUMDzlF5pnM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/5KRtVMia8Do\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/SG_OVPgpS-8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/SG_OVPgpS-8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/kd_F1V6Y7_c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/qS4Nn282A4M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/5yfh2VIXAo0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/Spvwnoc8rbk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/DaP54v0rYsA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ua4oFVz39vM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
        VideoID(videoLink: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/r15_6z9xryo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>")

    ]

    func getSelectionVideo(forCategory selection: String) -> [VideoID] {
        switch selection {
        case "Cribs":
            return mansionVideoLink
        case "Rides":
            return carVideoLink
        case "Jet Setter":
            return jetSetterVideoLink
        case "Real Talk":
            return realTalkVideoLink
        case "Wow Interiors":
            return wowInteriorsVideoLink
        case "Toys":
            return toysVideoLink
        default:
            return realTalkVideoLink
        }
    }
    
    private let moreTableView = [
        More(moreImage: "About", MoreTitle: "About Visualize", MoreNextImage: "Chevron"),
        More(moreImage: "SendFeedback", MoreTitle: "Send Feedback", MoreNextImage: "Chevron"),
        More(moreImage: "Rate", MoreTitle: "Rate", MoreNextImage: "Chevron"),
        More(moreImage: "Share", MoreTitle: "Share With Friends", MoreNextImage: "Chevron"),
        More(moreImage: "Add", MoreTitle: "Add Video Request", MoreNextImage: "Chevron"),
        More(moreImage: "Favourite", MoreTitle: "Favourites", MoreNextImage: "Chevron")
    
    ]
    
    func gerMoreTableView() -> [More] {
        return moreTableView
    }
    
}
