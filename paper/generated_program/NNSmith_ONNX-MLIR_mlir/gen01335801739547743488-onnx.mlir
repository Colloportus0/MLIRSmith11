module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<-5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(-1 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.mlir.constant(8 : index) : i64
    %46 = llvm.mlir.null : !llvm.ptr<i32>
    %47 = llvm.getelementptr %46[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(16 : index) : i64
    %50 = llvm.add %48, %49  : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i32> to i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.sub %49, %54  : i64
    %56 = llvm.add %53, %55  : i64
    %57 = llvm.urem %56, %49  : i64
    %58 = llvm.sub %56, %57  : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %61 = llvm.insertvalue %52, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %44, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %43, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %41, %70[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %42, %71[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%73 : i64)
  ^bb1(%76: i64):  // 2 preds: ^bb0, ^bb11
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%78 : i64)
  ^bb3(%81: i64):  // 2 preds: ^bb2, ^bb10
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%83 : i64)
  ^bb5(%86: i64):  // 2 preds: ^bb4, ^bb9
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%88 : i64)
  ^bb7(%91: i64):  // 2 preds: ^bb6, ^bb8
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %93 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mul %76, %94  : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mul %81, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mul %86, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.add %101, %91  : i64
    %103 = llvm.getelementptr %93[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.add %14, %14  : i64
    %107 = llvm.add %106, %86  : i64
    %108 = llvm.add %107, %14  : i64
    %109 = llvm.getelementptr %105[%108] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %110 = llvm.load %109 : !llvm.ptr<i32>
    %111 = llvm.add %104, %110  : i32
    %112 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.mul %76, %113  : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %81, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mul %86, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.add %120, %91  : i64
    %122 = llvm.getelementptr %112[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %111, %122 : !llvm.ptr<i32>
    %123 = llvm.add %91, %90  : i64
    llvm.br ^bb7(%123 : i64)
  ^bb9:  // pred: ^bb7
    %124 = llvm.add %86, %85  : i64
    llvm.br ^bb5(%124 : i64)
  ^bb10:  // pred: ^bb5
    %125 = llvm.add %81, %80  : i64
    llvm.br ^bb3(%125 : i64)
  ^bb11:  // pred: ^bb3
    %126 = llvm.add %76, %75  : i64
    llvm.br ^bb1(%126 : i64)
  ^bb12:  // pred: ^bb1
    %127 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %128 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %128, %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.insertvalue %129, %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.insertvalue %134, %133[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.insertvalue %136, %135[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.insertvalue %138, %137[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.insertvalue %140, %139[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.insertvalue %142, %141[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.insertvalue %144, %143[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mlir.null : !llvm.ptr<i64>
    %151 = llvm.getelementptr %150[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<i64> to i64
    %153 = llvm.mlir.constant(16 : index) : i64
    %154 = llvm.add %152, %153  : i64
    %155 = llvm.call @malloc(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.bitcast %155 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i64> to i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.sub %153, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.urem %160, %153  : i64
    %162 = llvm.sub %160, %161  : i64
    %163 = llvm.inttoptr %162 : i64 to !llvm.ptr<i64>
    %164 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %165 = llvm.insertvalue %156, %164[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %163, %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.insertvalue %167, %166[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %146, %168[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.insertvalue %147, %169[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.insertvalue %147, %170[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %148, %171[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%173 : i64)
  ^bb13(%176: i64):  // 2 preds: ^bb12, ^bb17
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%178 : i64)
  ^bb15(%181: i64):  // 2 preds: ^bb14, ^bb16
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %183 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %176, %184  : i64
    %186 = llvm.add %185, %181  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %187 : !llvm.ptr<i64>
    %188 = llvm.add %181, %180  : i64
    llvm.br ^bb15(%188 : i64)
  ^bb17:  // pred: ^bb15
    %189 = llvm.add %176, %175  : i64
    llvm.br ^bb13(%189 : i64)
  ^bb18:  // pred: ^bb13
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%190 : i64)
  ^bb19(%193: i64):  // 2 preds: ^bb18, ^bb26
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%195 : i64)
  ^bb21(%198: i64):  // 2 preds: ^bb20, ^bb25
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%200 : i64)
  ^bb23(%203: i64):  // 2 preds: ^bb22, ^bb24
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %205 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mul %193, %206  : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %198, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.add %210, %203  : i64
    %212 = llvm.getelementptr %205[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %213 = llvm.load %212 : !llvm.ptr<i32>
    %214 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mul %193, %215  : i64
    %217 = llvm.add %216, %198  : i64
    %218 = llvm.getelementptr %214[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %219 = llvm.load %218 : !llvm.ptr<i64>
    %220 = llvm.icmp "slt" %219, %12 : i64
    %221 = llvm.select %220, %12, %219 : i1, i64
    %222 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.mlir.constant(4 : index) : i64
    %224 = llvm.mul %193, %223  : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mul %198, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %221  : i64
    %229 = llvm.getelementptr %222[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.icmp "sgt" %213, %230 : i32
    %232 = llvm.select %231, %203, %221 : i1, i64
    %233 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mul %193, %234  : i64
    %236 = llvm.add %235, %198  : i64
    %237 = llvm.getelementptr %233[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %232, %237 : !llvm.ptr<i64>
    %238 = llvm.add %203, %202  : i64
    llvm.br ^bb23(%238 : i64)
  ^bb25:  // pred: ^bb23
    %239 = llvm.add %198, %197  : i64
    llvm.br ^bb21(%239 : i64)
  ^bb26:  // pred: ^bb21
    %240 = llvm.add %193, %192  : i64
    llvm.br ^bb19(%240 : i64)
  ^bb27:  // pred: ^bb19
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.constant(8 : index) : i64
    %247 = llvm.mlir.null : !llvm.ptr<i64>
    %248 = llvm.getelementptr %247[%246] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %249 = llvm.ptrtoint %248 : !llvm.ptr<i64> to i64
    %250 = llvm.mlir.constant(16 : index) : i64
    %251 = llvm.add %249, %250  : i64
    %252 = llvm.call @malloc(%251) : (i64) -> !llvm.ptr<i8>
    %253 = llvm.bitcast %252 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %254 = llvm.ptrtoint %253 : !llvm.ptr<i64> to i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.sub %250, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.urem %257, %250  : i64
    %259 = llvm.sub %257, %258  : i64
    %260 = llvm.inttoptr %259 : i64 to !llvm.ptr<i64>
    %261 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %262 = llvm.insertvalue %253, %261[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %266 = llvm.insertvalue %241, %265[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.insertvalue %242, %266[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %268 = llvm.insertvalue %243, %267[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %269 = llvm.insertvalue %245, %268[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %270 = llvm.insertvalue %243, %269[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.insertvalue %244, %270[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%272 : i64)
  ^bb28(%275: i64):  // 2 preds: ^bb27, ^bb35
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb29, ^bb36
  ^bb29:  // pred: ^bb28
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%277 : i64)
  ^bb30(%280: i64):  // 2 preds: ^bb29, ^bb34
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb31, ^bb35
  ^bb31:  // pred: ^bb30
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%282 : i64)
  ^bb32(%285: i64):  // 2 preds: ^bb31, ^bb33
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %287 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mul %275, %288  : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mul %280, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.add %292, %285  : i64
    %294 = llvm.getelementptr %287[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.load %294 : !llvm.ptr<i32>
    %296 = llvm.sext %295 : i32 to i64
    %297 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %275, %298  : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %280, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %285  : i64
    %304 = llvm.getelementptr %297[%303] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %296, %304 : !llvm.ptr<i64>
    %305 = llvm.add %285, %284  : i64
    llvm.br ^bb32(%305 : i64)
  ^bb34:  // pred: ^bb32
    %306 = llvm.add %280, %279  : i64
    llvm.br ^bb30(%306 : i64)
  ^bb35:  // pred: ^bb30
    %307 = llvm.add %275, %274  : i64
    llvm.br ^bb28(%307 : i64)
  ^bb36:  // pred: ^bb28
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mlir.null : !llvm.ptr<i64>
    %313 = llvm.getelementptr %312[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %314 = llvm.ptrtoint %313 : !llvm.ptr<i64> to i64
    %315 = llvm.mlir.constant(16 : index) : i64
    %316 = llvm.add %314, %315  : i64
    %317 = llvm.call @malloc(%316) : (i64) -> !llvm.ptr<i8>
    %318 = llvm.bitcast %317 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %319 = llvm.ptrtoint %318 : !llvm.ptr<i64> to i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.sub %315, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.urem %322, %315  : i64
    %324 = llvm.sub %322, %323  : i64
    %325 = llvm.inttoptr %324 : i64 to !llvm.ptr<i64>
    %326 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %327 = llvm.insertvalue %318, %326[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %328 = llvm.insertvalue %325, %327[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.insertvalue %329, %328[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %331 = llvm.insertvalue %308, %330[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %332 = llvm.insertvalue %309, %331[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %333 = llvm.insertvalue %309, %332[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %334 = llvm.insertvalue %310, %333[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%335 : i64)
  ^bb37(%338: i64):  // 2 preds: ^bb36, ^bb41
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%340 : i64)
  ^bb39(%343: i64):  // 2 preds: ^bb38, ^bb40
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %345 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %338, %346  : i64
    %348 = llvm.add %347, %343  : i64
    %349 = llvm.getelementptr %345[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %349 : !llvm.ptr<i64>
    %350 = llvm.add %343, %342  : i64
    llvm.br ^bb39(%350 : i64)
  ^bb41:  // pred: ^bb39
    %351 = llvm.add %338, %337  : i64
    llvm.br ^bb37(%351 : i64)
  ^bb42:  // pred: ^bb37
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%352 : i64)
  ^bb43(%355: i64):  // 2 preds: ^bb42, ^bb50
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%357 : i64)
  ^bb45(%360: i64):  // 2 preds: ^bb44, ^bb49
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%362 : i64)
  ^bb47(%365: i64):  // 2 preds: ^bb46, ^bb48
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %367 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %368 = llvm.mlir.constant(4 : index) : i64
    %369 = llvm.mul %355, %368  : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %360, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %365  : i64
    %374 = llvm.getelementptr %367[%373] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %375 = llvm.load %374 : !llvm.ptr<i64>
    %376 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mul %360, %377  : i64
    %379 = llvm.add %378, %365  : i64
    %380 = llvm.getelementptr %376[%379] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %381 = llvm.load %380 : !llvm.ptr<i64>
    %382 = llvm.icmp "slt" %381, %12 : i64
    %383 = llvm.select %382, %12, %381 : i1, i64
    %384 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mul %383, %385  : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mul %360, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.add %389, %365  : i64
    %391 = llvm.getelementptr %384[%390] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %392 = llvm.load %391 : !llvm.ptr<i64>
    %393 = llvm.icmp "slt" %375, %392 : i64
    %394 = llvm.select %393, %355, %383 : i1, i64
    %395 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %360, %396  : i64
    %398 = llvm.add %397, %365  : i64
    %399 = llvm.getelementptr %395[%398] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %394, %399 : !llvm.ptr<i64>
    %400 = llvm.add %365, %364  : i64
    llvm.br ^bb47(%400 : i64)
  ^bb49:  // pred: ^bb47
    %401 = llvm.add %360, %359  : i64
    llvm.br ^bb45(%401 : i64)
  ^bb50:  // pred: ^bb45
    %402 = llvm.add %355, %354  : i64
    llvm.br ^bb43(%402 : i64)
  ^bb51:  // pred: ^bb43
    %403 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    %404 = llvm.insertvalue %172, %403[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %405 = llvm.insertvalue %334, %404[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %405 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(2 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(0 : i64) : i64
    %72 = llvm.getelementptr %50[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %72 : !llvm.ptr<ptr<i8>>
    %73 = llvm.mlir.constant(2 : i64) : i64
    %74 = llvm.call @omTensorCreateUntyped(%73) : (i64) -> !llvm.ptr<i8>
    %75 = llvm.mlir.constant(1 : i64) : i64
    %76 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %78 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.bitcast %78 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%74, %75, %77, %79) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %80 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%74, %80) : (!llvm.ptr<i8>, i64) -> ()
    %81 = llvm.call @omTensorGetShape(%74) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %82 = llvm.call @omTensorGetStrides(%74) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.getelementptr %81[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.getelementptr %82[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(1 : i64) : i64
    %89 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.getelementptr %81[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.getelementptr %82[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.getelementptr %50[%93] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %74, %94 : !llvm.ptr<ptr<i8>>
    %95 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %95 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<125 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<125 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

