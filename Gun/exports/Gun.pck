GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex &      �      �p��<f��r�g��.�   res://Bullet.gd.remap    6      !       טdZ�=���B!��q'5   res://Bullet.gdc0      U      B=��w�2U;���d   res://Bullet.tscn   �      {      �#�l��μI`��#�   res://Gun.tscn        �      p��z�����/J���   res://Player.gd.remap   P6      !       ��0�F �qq��dX��   res://Player.gdc�      �      �0�z�����*mќ7   res://Player.tscn   �      I      �,k=kBY|�������   res://Target.tscn   �      �      X��,OD�n��E���   res://Trail.tscn�      �      m�Ѓ`�ۘ�{S���+�   res://World.gd.remap�6              ���z�����R�U�   res://World.gdc �      �       tQ��"5f�t�}	+   res://World.tscn`      �      ubhs��(��`2�>}   res://default_env.tres  P%      �       um�`�N��<*ỳ�8   res://icon.png  �6      i      ����󈘥Ey��
�   res://icon.png.import   �3      �      �����%��(#AB�   res://project.binaryD      0      j1a�S��+�5p�Տ    GDSC            y      ��������τ�   ����������Ӷ   ����������Ӷ   �������������Ӷ�   ����������¶   �����϶�   �������Ӷ���   �������Ӷ���   �������¶���   ��������Ҷ��   �������ض���   ������������������ض   ����Ķ��   ������¶   ���������������Ŷ���   ����׶��   ��������¶��   ��������������¶   �����������¶���   �����������������¶�   ���������Ӷ�      timeout       _on_Bullet_timeout                            
                              #   	   0   
   :      F      G      N      U      _      f      g      m      s      w      3YY8P�  Q;�  Y;�  Y8P�  Q;�  YY0�  PQV�  �  �  T�  PQ�  �  PQT�  PQT�	  P�  Q�  �  T�
  �  T�  PQ�  W�  T�  PRR�  QYY0�  P�  QV�  �  T�  P�
  Q�  *�  T�  PQ�  V�  �  T�  P�  QYY0�  PQV�  �  T�  PQ�  �  PQY`           [gd_scene load_steps=4 format=2]

[ext_resource path="res://Bullet.gd" type="Script" id=1]
[ext_resource path="res://Trail.tscn" type="PackedScene" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 2.50211, 1.00787 )

[node name="Bullet" type="RigidBody2D"]
position = Vector2( -0.0149059, 0 )
mass = 0.402041
gravity_scale = 12.6
continuous_cd = 1
script = ExtResource( 1 )
__meta__ = {
"_edit_horizontal_guides_": [ -2.68699 ]
}
liner_scene = ExtResource( 2 )
liner_limit = 20

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0.455476, 0.0198078 )
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -2.0
margin_top = -1.0
margin_right = 3.0
margin_bottom = 1.0
color = Color( 1, 0.796078, 0, 1 )

[node name="Timer" type="Timer" parent="."]
wait_time = 2.0
one_shot = true
autostart = true
     [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 118, 20 )

[node name="Gun" type="KinematicBody2D"]

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -21.0
margin_top = -19.0
margin_right = 215.0
margin_bottom = 21.0
color = Color( 0, 0, 0, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 97, 1 )
shape = SubResource( 1 )
disabled = true
 GDSC   &      B        ������������τ�   ��������Ŷ��   ������������������������ض��   �������϶���   ����Ҷ��   ���������Ӷ�   ������϶   �����������Ҷ���   ������������ڶ��   ��������¶��   ����������Ӷ   �����������Ӷ���   ��������������Ӷ   �����϶�   ����Ķ��   ������������Ӷ��   ������¶   ���������������Ŷ���   ����׶��   ��ض   ������¶   ����¶��   ����������������Ҷ��   ����¶��   ������ض   ���������������ض���   ����������ض   ��������������Ŷ   �������Ӷ���   ������������������ض   �������Ӷ���   ������������������ض   �������ض���   �����������ٶ���   ��������������������Ӷ��   ���������¶�   ��������Ҷ��   ����������������¶��            timeout       _on_Timer_timeout         shoot         shotgun       Gun/Spawn_Point                                 
                               '   	   (   
   /      0      7      <      =      D      G      H      N      V      b      c      j      p      x      y      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;      <     =     >   	  ?   
  @     A     B   3YY;�  �  PQY;�  �  PQYY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  YY8P�  Q;�  YY8P�  Q;�  Y;�	  YY8P�
  Q;�  Y;�  YY0�  PQV�  W�  T�  P�  Q�  W�  T�  P�  RR�  QYY0�  P�  QV�  �  �  PQ�  W�  T�  P�  QY�  &�  T�  P�  QV�  �  PQ�  &�  T�  P�  QV�  �  PQYY0�  PQV�  &�	  V�  ;�  �  ;�  �  ;�  �  P�  QT�  PQ�  �  �  T�  PQ�  �  T�  P�  QY�  �  �   T�!  P�  Q�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  Y�  �  T�"  P�  P�   PQ�  �  �  QQ�  �  T�  P�  Q�  �#  PQT�$  P�  Q�  �	  �  YY0�  PQV�  -YY0�%  PQV�  �	  Y`       [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://Bullet.tscn" type="PackedScene" id=2]
[ext_resource path="res://Gun.tscn" type="PackedScene" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 25.0404, 17.1207 )

[node name="Player" type="KinematicBody2D"]
position = Vector2( 0.7545, 0.0767112 )
script = ExtResource( 1 )
bullet_speed = 4000
shot_interval = 0.02
bullet_scene = ExtResource( 2 )

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -25.0
margin_top = -17.0
margin_right = 25.0
margin_bottom = 17.0
rect_pivot_offset = Vector2( 20.0174, 20.0053 )
color = Color( 0.0862745, 0.870588, 1, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -2.24109, -0.0426874 )
shape = SubResource( 1 )

[node name="Gun" parent="." instance=ExtResource( 3 )]
scale = Vector2( 0.181573, 0.181573 )

[node name="Spawn_Point" type="Position2D" parent="Gun"]
position = Vector2( 214.208, -0.352649 )

[node name="Timer" type="Timer" parent="."]
autostart = true
       [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 9.49288, 18.4888 )

[node name="Target" type="RigidBody2D"]
mass = 1.16
gravity_scale = 16.33

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -9.88402
margin_top = -18.8147
margin_right = 9.11598
margin_bottom = 0.185337
rect_scale = Vector2( 1, 1.90726 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -0.494886, -0.461816 )
shape = SubResource( 1 )
     [gd_scene load_steps=5 format=2]

[sub_resource type="CanvasItemMaterial" id=4]
blend_mode = 1

[sub_resource type="Gradient" id=1]

[sub_resource type="OpenSimplexNoise" id=2]

[sub_resource type="NoiseTexture" id=3]
noise = SubResource( 2 )

[node name="Line2D" type="Line2D"]
show_behind_parent = true
material = SubResource( 4 )
width = 3.0
default_color = Color( 1, 1, 1, 1 )
gradient = SubResource( 1 )
texture = SubResource( 3 )
texture_mode = 2
           GDSC                   ���Ӷ���   �����϶�                                                    	      
                           3YYYYYYY0�  PQV�  -YYYYY`    [gd_scene load_steps=4 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Target.tscn" type="PackedScene" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 35.7638, 995.985 )

[node name="World" type="Node"]

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 497.926, 270.325 )

[node name="StaticBody2D" type="StaticBody2D" parent="."]
editor/display_folded = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( -31.0166, 302.412 )
shape = SubResource( 1 )

[node name="StaticBody2D2" type="StaticBody2D" parent="."]
editor/display_folded = true
position = Vector2( 1090.75, 0 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D2"]
position = Vector2( -31.0166, 302.412 )
shape = SubResource( 1 )

[node name="StaticBody2D3" type="StaticBody2D" parent="."]
editor/display_folded = true
position = Vector2( 1090.75, 0 )
rotation = 1.5708

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D3"]
position = Vector2( -31.0166, 302.412 )
shape = SubResource( 1 )

[node name="StaticBody2D4" type="StaticBody2D" parent="."]
editor/display_folded = true
position = Vector2( 1090.75, 0 )
rotation = 1.5708

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D4"]
position = Vector2( 635.84, 302.412 )
shape = SubResource( 1 )

[node name="Target" parent="." instance=ExtResource( 2 )]
position = Vector2( 235.603, 209.943 )

[node name="Target2" parent="." instance=ExtResource( 2 )]
position = Vector2( 300, 302.412 )

[node name="Target3" parent="." instance=ExtResource( 2 )]
position = Vector2( 642.908, 365.395 )

[node name="Target4" parent="." instance=ExtResource( 2 )]
position = Vector2( 644.074, 241.761 )

[node name="Target5" parent="." instance=ExtResource( 2 )]
position = Vector2( 862.182, 422.546 )

[node name="Target6" parent="." instance=ExtResource( 2 )]
position = Vector2( 863.348, 269.754 )
    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Bullet.gdc"
               [remap]

path="res://Player.gdc"
               [remap]

path="res://World.gdc"
�PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG	      _global_script_classes             _global_script_class_icons             application/config/name         Gun    application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png     input/shoot�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            input/shotgun�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         #   rendering/quality/2d/use_pixel_snap         )   rendering/environment/default_environment          res://default_env.tres  GDPC