module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_0(dense<[[[[[5], [7]]]], [[[[4], [6]]]]]> : tensor<2x1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<2 x array<1 x i32>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.constant(-2147483648 : i32) : i32
    %5 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x array<1 x i32>>>>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.insertvalue %6, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %6, %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.insertvalue %10, %9[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.insertvalue %12, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.insertvalue %14, %13[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.insertvalue %16, %15[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.insertvalue %18, %17[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.mlir.null : !llvm.ptr<i32>
    %42 = llvm.getelementptr %41[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.mlir.constant(16 : index) : i64
    %45 = llvm.add %43, %44  : i64
    %46 = llvm.call @malloc(%45) : (i64) -> !llvm.ptr<i8>
    %47 = llvm.bitcast %46 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.sub %44, %49  : i64
    %51 = llvm.add %48, %50  : i64
    %52 = llvm.urem %51, %44  : i64
    %53 = llvm.sub %51, %52  : i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr<i32>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %56 = llvm.insertvalue %47, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %32, %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %33, %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %34, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %35, %62[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %36, %63[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %39, %64[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %38, %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %35, %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.insertvalue %36, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.insertvalue %37, %68[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%70 : i64)
  ^bb1(%73: i64):  // 2 preds: ^bb0, ^bb14
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%75 : i64)
  ^bb3(%78: i64):  // 2 preds: ^bb2, ^bb13
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%80 : i64)
  ^bb5(%83: i64):  // 2 preds: ^bb4, ^bb12
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%85 : i64)
  ^bb7(%88: i64):  // 2 preds: ^bb6, ^bb11
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%90 : i64)
  ^bb9(%93: i64):  // 2 preds: ^bb8, ^bb10
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %95 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %96 = llvm.load %95 : !llvm.ptr<i32>
    %97 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %73, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %78, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mul %83, %103  : i64
    %105 = llvm.add %102, %104  : i64
    %106 = llvm.add %105, %88  : i64
    %107 = llvm.add %106, %93  : i64
    %108 = llvm.getelementptr %97[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.icmp "sgt" %96, %109 : i32
    %111 = llvm.select %110, %96, %109 : i1, i32
    %112 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %73, %113  : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %78, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mul %83, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.add %120, %88  : i64
    %122 = llvm.add %121, %93  : i64
    %123 = llvm.getelementptr %112[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %111, %123 : !llvm.ptr<i32>
    %124 = llvm.add %93, %92  : i64
    llvm.br ^bb9(%124 : i64)
  ^bb11:  // pred: ^bb9
    %125 = llvm.add %88, %87  : i64
    llvm.br ^bb7(%125 : i64)
  ^bb12:  // pred: ^bb7
    %126 = llvm.add %83, %82  : i64
    llvm.br ^bb5(%126 : i64)
  ^bb13:  // pred: ^bb5
    %127 = llvm.add %78, %77  : i64
    llvm.br ^bb3(%127 : i64)
  ^bb14:  // pred: ^bb3
    %128 = llvm.add %73, %72  : i64
    llvm.br ^bb1(%128 : i64)
  ^bb15:  // pred: ^bb1
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mlir.null : !llvm.ptr<i32>
    %137 = llvm.getelementptr %136[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<i32> to i64
    %139 = llvm.mlir.constant(16 : index) : i64
    %140 = llvm.add %138, %139  : i64
    %141 = llvm.call @malloc(%140) : (i64) -> !llvm.ptr<i8>
    %142 = llvm.bitcast %141 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i32> to i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.sub %139, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.urem %146, %139  : i64
    %148 = llvm.sub %146, %147  : i64
    %149 = llvm.inttoptr %148 : i64 to !llvm.ptr<i32>
    %150 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %151 = llvm.insertvalue %142, %150[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %129, %154[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %130, %155[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %131, %156[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %132, %157[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %134, %158[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %131, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %132, %160[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %133, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%163 : i64)
  ^bb16(%166: i64):  // 2 preds: ^bb15, ^bb26
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%168 : i64)
  ^bb18(%171: i64):  // 2 preds: ^bb17, ^bb25
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%173 : i64)
  ^bb20(%176: i64):  // 2 preds: ^bb19, ^bb24
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%178 : i64)
  ^bb22(%181: i64):  // 2 preds: ^bb21, ^bb23
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %183 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %166, %184  : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mul %171, %186  : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.add %188, %176  : i64
    %190 = llvm.add %189, %181  : i64
    %191 = llvm.getelementptr %183[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %4, %191 : !llvm.ptr<i32>
    %192 = llvm.add %181, %180  : i64
    llvm.br ^bb22(%192 : i64)
  ^bb24:  // pred: ^bb22
    %193 = llvm.add %176, %175  : i64
    llvm.br ^bb20(%193 : i64)
  ^bb25:  // pred: ^bb20
    %194 = llvm.add %171, %170  : i64
    llvm.br ^bb18(%194 : i64)
  ^bb26:  // pred: ^bb18
    %195 = llvm.add %166, %165  : i64
    llvm.br ^bb16(%195 : i64)
  ^bb27:  // pred: ^bb16
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%196 : i64)
  ^bb28(%199: i64):  // 2 preds: ^bb27, ^bb41
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%201 : i64)
  ^bb30(%204: i64):  // 2 preds: ^bb29, ^bb40
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%206 : i64)
  ^bb32(%209: i64):  // 2 preds: ^bb31, ^bb39
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%211 : i64)
  ^bb34(%214: i64):  // 2 preds: ^bb33, ^bb38
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%216 : i64)
  ^bb36(%219: i64):  // 2 preds: ^bb35, ^bb37
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %221 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mul %199, %222  : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %204, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mul %209, %227  : i64
    %229 = llvm.add %226, %228  : i64
    %230 = llvm.add %229, %214  : i64
    %231 = llvm.add %230, %219  : i64
    %232 = llvm.getelementptr %221[%231] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %233 = llvm.load %232 : !llvm.ptr<i32>
    %234 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mul %199, %235  : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mul %204, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.add %239, %214  : i64
    %241 = llvm.add %240, %219  : i64
    %242 = llvm.getelementptr %234[%241] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %243 = llvm.load %242 : !llvm.ptr<i32>
    %244 = llvm.icmp "sgt" %243, %233 : i32
    %245 = llvm.select %244, %243, %233 : i1, i32
    %246 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mul %199, %247  : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mul %204, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.add %251, %214  : i64
    %253 = llvm.add %252, %219  : i64
    %254 = llvm.getelementptr %246[%253] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %245, %254 : !llvm.ptr<i32>
    %255 = llvm.add %219, %218  : i64
    llvm.br ^bb36(%255 : i64)
  ^bb38:  // pred: ^bb36
    %256 = llvm.add %214, %213  : i64
    llvm.br ^bb34(%256 : i64)
  ^bb39:  // pred: ^bb34
    %257 = llvm.add %209, %208  : i64
    llvm.br ^bb32(%257 : i64)
  ^bb40:  // pred: ^bb32
    %258 = llvm.add %204, %203  : i64
    llvm.br ^bb30(%258 : i64)
  ^bb41:  // pred: ^bb30
    %259 = llvm.add %199, %198  : i64
    llvm.br ^bb28(%259 : i64)
  ^bb42:  // pred: ^bb28
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mlir.null : !llvm.ptr<i64>
    %268 = llvm.getelementptr %267[%266] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %269 = llvm.ptrtoint %268 : !llvm.ptr<i64> to i64
    %270 = llvm.mlir.constant(16 : index) : i64
    %271 = llvm.add %269, %270  : i64
    %272 = llvm.call @malloc(%271) : (i64) -> !llvm.ptr<i8>
    %273 = llvm.bitcast %272 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %274 = llvm.ptrtoint %273 : !llvm.ptr<i64> to i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.sub %270, %275  : i64
    %277 = llvm.add %274, %276  : i64
    %278 = llvm.urem %277, %270  : i64
    %279 = llvm.sub %277, %278  : i64
    %280 = llvm.inttoptr %279 : i64 to !llvm.ptr<i64>
    %281 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %282 = llvm.insertvalue %273, %281[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %280, %282[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.insertvalue %284, %283[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %260, %285[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %261, %286[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %262, %287[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %263, %288[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.insertvalue %265, %289[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.insertvalue %262, %290[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %263, %291[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %264, %292[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%294 : i64)
  ^bb43(%297: i64):  // 2 preds: ^bb42, ^bb53
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%299 : i64)
  ^bb45(%302: i64):  // 2 preds: ^bb44, ^bb52
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%304 : i64)
  ^bb47(%307: i64):  // 2 preds: ^bb46, ^bb51
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%309 : i64)
  ^bb49(%312: i64):  // 2 preds: ^bb48, ^bb50
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %314 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %297, %315  : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mul %302, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.add %319, %307  : i64
    %321 = llvm.add %320, %312  : i64
    %322 = llvm.getelementptr %314[%321] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %323 = llvm.load %322 : !llvm.ptr<i32>
    %324 = llvm.sext %323 : i32 to i64
    %325 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %297, %326  : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mul %302, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.add %330, %307  : i64
    %332 = llvm.add %331, %312  : i64
    %333 = llvm.getelementptr %325[%332] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %324, %333 : !llvm.ptr<i64>
    %334 = llvm.add %312, %311  : i64
    llvm.br ^bb49(%334 : i64)
  ^bb51:  // pred: ^bb49
    %335 = llvm.add %307, %306  : i64
    llvm.br ^bb47(%335 : i64)
  ^bb52:  // pred: ^bb47
    %336 = llvm.add %302, %301  : i64
    llvm.br ^bb45(%336 : i64)
  ^bb53:  // pred: ^bb45
    %337 = llvm.add %297, %296  : i64
    llvm.br ^bb43(%337 : i64)
  ^bb54:  // pred: ^bb43
    %338 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %339 = llvm.insertvalue %293, %338[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %340 = llvm.insertvalue %162, %339[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %340 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.call @main_graph(%1, %2, %3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %4, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %16 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %19 = llvm.mlir.constant(2 : i64) : i64
    %20 = llvm.mlir.constant(16 : i64) : i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %23 = llvm.mlir.constant(4 : i64) : i64
    %24 = llvm.call @omTensorCreateUntyped(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.mlir.constant(1 : i64) : i64
    %26 = llvm.extractvalue %17[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.bitcast %26 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %28 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.bitcast %28 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%24, %25, %27, %29) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %30 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%24, %30) : (!llvm.ptr<i8>, i64) -> ()
    %31 = llvm.call @omTensorGetShape(%24) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %32 = llvm.call @omTensorGetStrides(%24) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %33 = llvm.mlir.constant(0 : i64) : i64
    %34 = llvm.extractvalue %17[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.getelementptr %31[%33] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %34, %35 : !llvm.ptr<i64>
    %36 = llvm.extractvalue %17[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.getelementptr %32[%33] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %37 : !llvm.ptr<i64>
    %38 = llvm.mlir.constant(1 : i64) : i64
    %39 = llvm.extractvalue %17[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %31[%38] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %39, %40 : !llvm.ptr<i64>
    %41 = llvm.extractvalue %17[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.getelementptr %32[%38] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.extractvalue %17[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.getelementptr %31[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %44, %45 : !llvm.ptr<i64>
    %46 = llvm.extractvalue %17[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %32[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %46, %47 : !llvm.ptr<i64>
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.extractvalue %17[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.getelementptr %31[%48] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %49, %50 : !llvm.ptr<i64>
    %51 = llvm.extractvalue %17[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.getelementptr %32[%48] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %52 : !llvm.ptr<i64>
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.getelementptr %22[%53] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %24, %54 : !llvm.ptr<ptr<i8>>
    %55 = llvm.mlir.constant(4 : i64) : i64
    %56 = llvm.call @omTensorCreateUntyped(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %60 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.bitcast %60 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%56, %57, %59, %61) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %62 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%56, %62) : (!llvm.ptr<i8>, i64) -> ()
    %63 = llvm.call @omTensorGetShape(%56) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.call @omTensorGetStrides(%56) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.mlir.constant(0 : i64) : i64
    %66 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %63[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %64[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.mlir.constant(1 : i64) : i64
    %71 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %63[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %64[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.mlir.constant(2 : i64) : i64
    %76 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %63[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %64[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.mlir.constant(3 : i64) : i64
    %81 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %64[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.getelementptr %22[%85] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %56, %86 : !llvm.ptr<ptr<i8>>
    %87 = llvm.call @omTensorListCreate(%22, %19, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %87 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<59 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<59 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

