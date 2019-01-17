%% read data
function [Image, Ground_Truth]=load_data()
file_path = 'Pratheepan_Dataset\FamilyPhoto\';% ͼ���ļ���·�� ?
img_path_list = dir(strcat(file_path,'*.jpg'));%��ȡ���ļ���������bmp��ʽ��ͼ�� ?
img_num = length(img_path_list);%��ȡͼ��������?
Image=cell(1,img_num);
if img_num > 0 %������������ͼ�� ?
            for j = 1:img_num %��һ��ȡͼ�� ?
                image_name = img_path_list(j).name;% ͼ���� ?
                image = imread(strcat(file_path,image_name)); 
                Image{j}=image;
%                fprintf('%d %d %s\n',i,j,strcat(file_path,image_name));% ��ʾ���ڴ����ͼ���� ?


%����ֱ�ӿ��Է���ϸ��Ԫ���ݵķ�ʽ��������

            end 
end 
%% read groundTruth
file_path = 'Ground_Truth\GroundT_FamilyPhoto\';% ͼ���ļ���·�� ?
img_path_list = dir(strcat(file_path,'*.png'));%��ȡ���ļ���������bmp��ʽ��ͼ�� ?
img_num = length(img_path_list);%��ȡͼ��������?
GroundTruth=cell(1,img_num);
if img_num > 0 %������������ͼ�� ?
            for j = 1:img_num %��һ��ȡͼ�� ?
                image_name = img_path_list(j).name;% ͼ���� ?
                image = imread(strcat(file_path,image_name)); 
                Ground_Truth{j}=image;
%                fprintf('%d %d %s\n',i,j,strcat(file_path,image_name));% ��ʾ���ڴ����ͼ���� ?


%����ֱ�ӿ��Է���ϸ��Ԫ���ݵķ�ʽ��������

            end 
end
end