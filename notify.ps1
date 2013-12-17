$location = "Var From Init Data"
#$location = "IND"
$contact =""
####Local Contacts hardware ###########################
#-America’s
$contactNLK = "NR@olle.com"
$contactBDU ="CG@olle.com"
$contactCHL ="Jr@olle.com"
$contactCPK ="Ce@olle.com"
$contactMER ="Ht@olle.com"
$contactSCR ="Cs@olle.com"
$contactVIN ="Nto@olle.com; Fga@olle.com"
$contactCMS ="Vi@olle.com"
$contactEXEC ="Kson@olle.com"
#-APAC
$contactADE ="SRay@olle.com;Att@olle.com"
$contactAUK ="SRay@olle.com;Arett@olle.com"
$contactIND ="SRay@olle.com;Aett@olle.com"
$contactKLP ="SRay@olle.com;Aett@olle.com"
$contactSUZ ="MWu@olle.com"
#-EMEA
$contactBRE ="Cout@olle.com"
$contactAIX ="Cout@olle.com;Oker@olle.com"
$contactFAK ="Cout@olle.com;Ses@juk.com"
$contactFLX ="Cout@olle.com;Olker@olle.com"
$contactGTH ="Cout@olle.com;Peon@olle.com"
$contactSCH ="Cout@olle.com;Oler@olle.com"
$contactWEI ="Cout@olle.com"

##############################################
If ($location -eq "NLK"){
$contact = $contactNLK
}
   If ($location -eq "BDU"){
    $contact =$contactBDU
    }
        If ($location -eq "CHL"){
        $contact = $contactCHL
        }
          If ($location -eq "CPK"){
                $contact = $contactCPK
                }
             If ($location -eq "CPK"){
                $contact = $contactCPKCell
                }
               If ($location -eq "MER"){ 
                    $contact = $contactMER
                }
                  If ($location -eq "SCR"){
                    $contact = $contactSCR
                     }
                        If ($location -eq "VIN"){
                        $contact = $contactVIN
                        }
                            If ($location -eq "CMS"){
                            $contact = $contactCMS
                                }
                                If ($location -eq "EXEC"){
                                    $contact = $contactEXEC
                                    }
                                    If ($location -eq "EXEC"){
                                        $contact = $contactEXECCell
                                        }
If ($location -eq "ADE"){
    $contact = $contactADE
            }
            If ($location -eq "AUK"){
                $contact = $contactAUK
                    }
                    If ($location -eq "IND"){
                        $contact = $contactIND
                                }
                        If ($location -eq "KLP"){
                            $contact = $contactKLP
                                }
                            If ($location -eq "SUZ"){
                                $contact = $contactSUZ
                                        }
                                    If ($location -eq "BRE"){
                                            $contact = $contactBRE
                                                }
                                        If ($location -eq "AIX"){
                                                $contact = $contactAIX
                                                    }
                                                If ($location -eq "FAK"){
                                                    $contact = $contactFAK
                                                    }
                                                        If ($location -eq "FLX"){
                                                            $contact = $contactFLX
                                                                    }
                                                                If ($location -eq "GTH"){
                                                                    $contact = $contactGTH
                                                                              }
                                                                        If ($location -eq "SCH"){
                                                                               $contact = $contactSCH
                                                                                        }
                                                                                If ($location -eq "WEI"){
                                                                                        $contact = $contactWEI
                                                                                                }