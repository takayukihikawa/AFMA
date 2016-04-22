#!ruby -Ke
# coding: utf-8
#
#      AUTOSAR BSW and RTE TASK RELATIONAL YAML Generator

require "rexml/document"
require "pp"
require "yaml"
require "hashie"

doc = REXML::Document.new(File.new("blockdiagram.xml"))
data =YAML.load_file(templateparameter.yaml)

#task_num=1
#alarm_num=1
#swc_num=1


$hashforOsRteconf =
{"Ecuc" =>
  #OSに関するコンフィギュレーション情報
  {"Os" =>
    {"MainApp" =>
      {"DefinitionRef" => "OsAppMode"},
      "OsOS" =>
      {"OsStackMonitoring" => true,
        "OsUseGetServiceId" => true,
        "OsUseParameterAccess" => true,
        "OsStatus" => "EXTENDED",
        "OsScalabilityClass" => "SC1",
        "OsHooks" =>{
          "OsStartupHook" => true,
          "OsErrorHook" => true,
          "OsProtectionHook" => true,
          "OsPostTaskHook" => false,
          "OsPreTaskHook" => false,
          "OsShutdownHook" => false},
        "OsHookStack" => {"OsHookStackSize" => 1024},
        "OsOsStack" => {"OsOsStackSize" => 4096}
      }
    },
    
    #RTEに関するコンフィギュレーション情報
    
    "Rte" =>
    {"RteBswGeneral" =>
      {"RteSchMVersionInfoApi" => false},
      "RteGeneration" => {
        "RteCodeVendorId" => 65,
        "RteDevErrorDetect" => true,
        "RteDevErrorDetectUninit" => true,
        "RteMeasurementSupport" => false,
        "RteValueRangeCheckEnabled" => false,
        "RteVfbTraceEnabled" => false,
        "RteCalibrationSupport" => "NONE",
        "RteGenerationMode" => "COMPATIBILITY_MODE",
        "RteOptimizationMode" => "MEMORY"},
      "RteInitializationBehavior" =>
      {"RteInitializationStrategy" => "RTE_INITIALIZATION_STRATEGY_AT_RTE_START",
        "RteSectionInitializationPolicy" => "CLEARED"}
    }
  }
}
str3 = YAML.dump($hashforOsRteconf)
puts str3

class OsOS
  def initialize(sc,vhLevel,tpLevel,mpLevel,stackmonitor,status,serviceid,paramaccess,cores,mcoreid)
    @OsScalabilityClass = sc
    @OsViolationHandlingLevel = vhLevel
    @OsTimingProtectionLevel = tpLevel
    @OsMemoryProtectionLevel = mpLevel
    @OsStackMonitoring = stackmonitor
    @OsStatus = status
    @OsUseGetServiceId = serviceid
    @OsUseParameterAccess = paramaccess
    @OsNumberOfCores = cores
    @OsMasterCoreId = mcoreid
  end
  
  class OsHooks
  end
  class OsHookStack
  end
  class OsNonTrustedHookStack
  end 
  
  class OsOsStack
  end
  class OsTimingProtection
  end
  def write
  end
end

class OsAppMode
  def initialize()
  end
  def write  
  end
end

class OsTask
  attr_accessor :DefinitionRef,:OsTaskActivation, :OsTaskPriority,:OsTaskSchedule,:OsTaskEventRef,:OsTaskResourceRef,:OsTaskStackSize
  def initialize
    @DefinitionRef = "OsTask"
    @OsTaskActivation = 1
    @OsTaskPriority = 15
    @OsTaskSchedule = "FULL" 
    @OsTaskEventRef = "/Ecuc/"
    @OsTaskResourceRef = "/Ecuc/"
    @OsTaskStackSize = 1024  
  end
  def write
    instance_variables.each { |var|      
      k = var
      v = instance_variable_get(var)
      print(k,":",v, "\n")
      key_input = gets.chomp.to_i
      unless key_input == nil
        var = key_input
      end
    }
  end
def make_hashkey(tasknum)
  instance_variables.each { |var|
    k = var.to_s.tr('@','') 
    v = instance_variable_get(var)
    $hashforOsRteconf["Ecuc"]["Os"]["task#{tasknum}"] ||= {}
    $hashforOsRteconf["Ecuc"]["Os"]["task#{tasknum}"].store(k, v)
  }
  end
end

class OsIsr
  def initialize()
  end
end

class OsEvent
  def initialize()
  end
end


class OsResource
  def initialize()
  end
end

class OsCounter
  def initialize()
  end
end

class OsAlarm
  attr_accessor :DefinitionRef,:OsAlarmCounterRef,:OsAlarmAction,:OsAlarmAutostart
  def initialize
    @DefinitionRef = "OsAlarm"
    @OsAlarmCounterRef = "Ecuc/Os/MAIN_HW_COUNTER"
    @OsAlarmAction = {"OsAlarmActivateTaskRef" => {"OsAlarmActvateTaskRef" => "Ecuc/Os/Task1"}}
    @OsAlarmAutostart = {"OsAlarmAlarmTime"=>6000000,"OsAlarmCycleTime"=>600000,"OsAlarmAutostartType"=>"RELATIVE","OsAlarmAppModeRef"=>"/Ecuc/Os/MainApp"}
  end
  def write
    instance_variables.each { |var|      
      k = var
      v = instance_variable_get(var)
      print(k,":",v, "\n")
      key_input = gets.chomp.to_i
      unless key_input == nil
        var = key_input
      end
    }
    end
    def make_hashkey(alarmnum)
      instance_variables.each { |var|
        k = var.to_s.tr('@','') 
        v = instance_variable_get(var)
        $hashforOsRteconf["Ecuc"]["Os"]["Alarm#{alarmnum}"] ||= {}
        $hashforOsRteconf["Ecuc"]["Os"]["Alarm#{alarmnum}"].store(k, v)
      }
    end
  end
  
  class OsscheduleTable
    def initialize()
    end
  end
  
  class OsApplication
  def initialize()
    end
  end
  
  class OsMemoryRegion
    def initialize()
    end
  end
  
  class OsMemoryModule
    def initialize()
    end
  end
  
  class OsMemoryArea
    def initialize()
    end
  def write
    end
  end
  
  class OsLinkSection
    def initialize()
    end
    def write
    end
  end
  
  class OsStandardMemoryRegion
    def initialize()
    end
    def write
    end
  end
  
  class OsIoc
    def initialize()
    end
    def write
    end
  end

  class OsSpinlock
    def initialize()
    end
    def write
    end
  end
  
  class OsInterCoreInterrupt
    def initialize()
    end
    def write
    end
  end
  
  class  OsInclude
      def initialize()
    end
    def write
    end
  end
  
  class OsMutex
    def initialize()
    end
    def write
    end
  end
  
  
  
  class SWC
    attr_accessor :DefinitionRef,:RteSoftwareComponentInstanceRef,:RteEventToTaskMapping
    def initialize
      @DefinitionRef = "RteSwComponentInstance"
      @RteSoftwareComponentInstanceRef = "a/b/c"
      @RteEventToTaskMapping = {"RteEventRef"=>"a/b/c/TimingEvent","RteMappedToTaskRef"=>"/Ecuc/Os/TASK1","RtePositionInTask"=>"5","RteUsedOsAlarmRef"=>"/Ecuc/Os/ALARM1"}
      #RteActivationOffset
      #   RteEventRef
      #   RteMappedToTaskRef
      #   RtePositionInTask
      #   RteUsedOsAlarmRef
    #   RteUsedOsEventRef
      #@RteExclusiveAreaImplementation = implementation
      #   RteExclusiveAreaImplMechanism
      #   RteExclusiveAreaOsResourceRef
      #   RteExclusiveAreaRef
    #   RteExclusiveAreaOsSpinlockRef
    end      
    def write
      instance_variables.each { |var|      
        k = var
        v = instance_variable_get(var)
        print(k,":",v, "\n")
        key_input = gets.chomp.to_i
        unless key_input == nil
          var = key_input
      end
    }
    #print("DefinitionRef:",@DefinitionRef, "\n") 
        #@DefinitionRef = gets.chomp.to_s
        #print("RteSoftwareComponentInstanceRef:",@RteSoftwareComponentInstanceRef, "\n")
        #@RteSoftwareComponentInstanceRef = gets.chomp.to_s
        #print("RteEventToTaskMapping:",@RteEventToTaskMapping, "\n")
        #@RteEventToTaskMapping = gets.chomp.to_s
      end
      def make_hashkey(swcnum)
        instance_variables.each { |var|
          k = var.to_s.tr('@','') 
          v = instance_variable_get(var)
          $hashforOsRteconf["Ecuc"]["Rte"]["SWC#{swcnum}"] ||= {}
          $hashforOsRteconf["Ecuc"]["Rte"]["SWC#{swcnum}"].store(k, v)
        }
      end
    end
    
    puts "##########################"
    puts "#    how many tasks ?    #"
    puts "##########################" 
    str = STDIN.gets
    print "created tasks:",str
    
    
    while task_num <= str.to_f
      _temp = "task#{task_num}"
      puts "---------------------------"
      puts _temp
      puts "---------------------------"
      _temp = OsTask.new
      _temp.write
      _temp.make_hashkey(task_num)
      task_num += 1
    end
    
    
    puts "##########################"
    puts "#    how many OsAlarm ?  #"
    puts "##########################" 
    str = STDIN.gets
    print "created OsAlarms:",str
    while alarm_num <= str.to_f
      _temp = "alarm#{alarm_num}"
      puts "---------------------------"
      puts _temp
      puts "---------------------------" 
      _temp = OsAlarm.new
      _temp.write
      _temp.make_hashkey(alarm_num)
      alarm_num += 1
    end 
    
    
    puts "##########################"
    puts "#    how many SW-C       #"
    puts "##########################" 
    str = STDIN.gets
    print "created SWCs:",str
    while swc_num <= str.to_f
      _temp = "SWC#{swc_num}"
      puts "---------------------------"
      puts _temp
      puts "---------------------------" 
      _temp = SWC.new
      _temp.write
      _temp.make_hashkey(swc_num)
      swc_num += 1
    end 
    
    
    open("./OsRte_conf.yaml","w") do |f|
      YAML.dump($hashforOsRteconf, f)
    end
    
    
    