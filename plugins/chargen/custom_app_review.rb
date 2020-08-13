module AresMUSH
  module Chargen
    def self.custom_app_review(char)
            
      # If you don't want to have any custom app review steps, return nil
      #return nil
            
      # Otherwise, return a message to display.  Here's an example of how to 
      # give an alert if the character has chosen an invalid position for their 
      # faction.
      #
      #  faction = char.group("Faction")
      #  position = char.group("Position")
      #  
      #  if (position == "Knight" && faction != "Noble")
      #    msg = "%xrOnly nobles can be knights.%xn"
      #  else
      #    msg = t('chargen.ok')
      #  end
      #
      #  return Chargen.format_review_status "Checking groups.", msg
      #
      # You can also use other built-in chargen status messages, like t('chargen.not_set').  
      # See https://www.aresmush.com/tutorials/config/chargen.html for details.

      powers = char.powers
      advantages = char.advantages 
      skills = char.skills
      flaws = char.flaws

      if (powers.length > 0)
        msg = t('chargen.ok')
      else
        msg = t('chargen.oops_missing', :missing => "Powers")
      end

      return Chargen.format_review_status "Checking powers.", msg

      if (skills.length > 0)
        msg = t('chargen.ok')
      else
        msg = t('chargen.oops_missing', :missing => "Skills")
      end

      return Chargen.format_review_status "Checking skills.", msg

      if (advantages.length > 0)
        msg = t('chargen.ok')
      else
        msg = t('chargen.oops_missing', :missing => "Advantages")
      end

      return Chargen.format_review_status "Checking advantages.", msg

      if (flaws.length > 0)
        msg = t('chargen.ok')
      else
        msg = t('chargen.oops_missing', :missing => "Flaws")
      end

      return Chargen.format_review_status "Checking Flaws.", msg

    end
  end
end