var timerID = null;
var timerRunning = false;
var startTime = (new Date()).getTime();
function showtime(_tagname,_auctionDate,_buttonFlag)
{
    now = new Date();
var Temp;
    var ts=parseInt((startTime-now.getTime())/1000)+_auctionDate;
    var dateLeft = 0;
    var hourLeft = 0;
    var minuteLeft = 0;
    var secondLeft = 0;

    if(ts < 0)
    {
        ts = 0;
        CurHour = 0;
        CurMinute = 0;
        CurSecond = 0;
    } else {
        dateLeft =parseInt(ts/86400);

        ts = ts - dateLeft * 86400;
        hourLeft = parseInt(ts/3600);
        ts = ts - hourLeft * 3600;
		
        minuteLeft = parseInt(ts/60);
		
        secondLeft = ts - minuteLeft * 60;
		
    }
    if(hourLeft < 10) hourLeft = '0' +hourLeft;
    if(minuteLeft < 10) minuteLeft = '0' +minuteLeft;
    if(secondLeft<10) secondLeft='0'+secondLeft;
    if( dateLeft > 0 )
        dateLeft = dateLeft + "��" ;
    else
        dateLeft = "";
    if( hourLeft > 0 )
        hourLeft = hourLeft + "Сʱ" ;
    else
    {
        if( dateLeft != "" )
            hourLeft = "00Сʱ";
        else
            hourLeft = "";
    }
    if( minuteLeft > 0 )
        minuteLeft = minuteLeft + "����" ;
    else
    {
        if( dateLeft !="" || hourLeft != "")
            minuteLeft = "00����";
        else
            minuteLeft = "";
    }
    if( secondLeft > 0 )
        secondLeft = secondLeft + "��" ;
    else
    {
        if( dateLeft !="" || hourLeft != "" || minuteLeft != "")
            secondLeft = "00��";
        else
            secondLeft = "";
    }
//	if (dateLeft == '') {
   		Temp=dateLeft+hourLeft+minuteLeft+secondLeft ;
//   	}else {
//  		Temp=dateLeft+hourLeft;
//   	}
    if(_auctionDate <= 0 || dateLeft <=0 && hourLeft<=0 && minuteLeft<=0 && secondLeft <=0)
    {
        Temp = "�ɽ�����";
        stopclock();
    }
	if(_buttonFlag==2)
	{
		if(g_startTime.length>1)
			Temp="����"+g_startTime+"��ʼ����  ";
		else
			Temp ="������ʼ";
		stopclock();
	}
	
    document.getElementById(_tagname).innerHTML=Temp;
    timerID = setTimeout("showtime('"+_tagname+"',"+_auctionDate+","+_buttonFlag+")",1000);
    timerRunning = true;
}
function stopclock()
{
    if(timerRunning)
        clearTimeout(timerID);
    timerRunning = false;
}


function GetRemainTime(theTime)
{
	var aDate=24*60*60;
	var  anHour=60*60;
	var aMinute=60;
	var iSeconds;
	var str="";
	var now=new Date().getTime();
	var iTime=theTime - parseInt(now/1000);
	if(iTime>0)
	{
	str="ʣ�� ";
		if(iTime > aDate )
		{
			str+=parseInt(iTime / aDate)+"��";
			return str;
		}
		if(iTime >anHour)
		{
			str+=parseInt(iTime / anHour)+"Сʱ";
			return str;
		}
		if(iTime >aMinute * 10 )
		{
			str+=parseInt(iTime / aMinute)+"����";
			return str;
		}
		if(iTime >aMinute )
		{
			
			iSeconds= iTime- parseInt ((iTime /aMinute)) * aMinute;
			if(iSeconds > 0) 
				str+=parseInt(iTime / aMinute)+"����"+ iSeconds+" ��";
			else
				str+=parseInt(iTime / aMinute)+"����";
			return str;
		}
		if(iTime  > 0  )
		{
			
			str+=iTime+"��";
			return str;
		}
	}
	else	
	if(iTime<=0 )
	{	
		str="�ѹ���";	
 		return str;
	}
	
}
function  DisplayRemainTime(theTime)
{
	document.write(GetRemainTime(theTime));
	return;
}
