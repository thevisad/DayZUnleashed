class CfgAdjustments {
	class WeightReduction {
			  skill=2;
			  displayName="Weight Reduction";
			  description="Bonus for weight reduction based on Survival Skill";
			  locked=0;                 //Specilized skill
			  image="";                 //Image tile
			  maxSkill=1000;            //Skill limit
			  minSkill=1000;            //Skill level of parent to unlock
			  cost=0;                   //Experience cost of unlock skill.
			  curve=10.0;               //Curve applied to current skill versus experience.
			  ability[] = {};           //list of abilities this skill line grants.
	};
};