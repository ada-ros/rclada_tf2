with ROSIDL.Types;

package RCL.TF2 is

   --  Wrap the minimal C++ stuff to comfortably access transforms directly in
   --  Ada

   type Translation is record
      X, Y, Z : ROSIDL.Types.Float64;
   end record;

   subtype Radians is ROSIDL.Types.Float64;

   type Rotation is record
      Yaw, Pitch, Roll : Radians;
   end record;

   procedure Publish_Static_Transform
     (From, Into  : String;
      Translation : TF2.Translation;
      Rotation    : TF2.Rotation);

end RCL.TF2;